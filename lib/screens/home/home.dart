import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
            ),
            Text(
              "My Dashboard",
              style: blackHeadingStyle
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(35),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                primary: false,
                crossAxisCount: 2,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'schedule');
                          },
                          icon: Icon(Icons.menu_book_rounded),
                          iconSize: 70,
                          color: Colors.grey[800],
                        ),
                        Container(padding: EdgeInsets.all(8)),
                        Text("Schedule", style: subHeading2Style)
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'tasks');
                          },
                          icon: Icon(Icons.check_box_rounded),
                          iconSize: 70,
                          color: Colors.grey[800],
                        ),
                        Container(padding: EdgeInsets.all(8)),
                        Text("Tasks", style: subHeading2Style)
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'health');
                          },
                          icon: Icon(Icons.health_and_safety_rounded),
                          iconSize: 70,
                          color: Colors.grey[800],
                        ),
                        Container(padding: EdgeInsets.all(8)),
                        Text("Health", style: subHeading2Style)
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'community');
                          },
                          icon: Icon(Icons.people_rounded),
                          iconSize: 70,
                          color: Colors.grey[800],
                        ),
                        Container(padding: EdgeInsets.all(8)),
                        Text("Community", style: subHeading2Style)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10
            )
          ]
      ),
      child: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_rounded, size: 30),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_rounded, size: 30),
            ),
          ],
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu, size: 20),
            onPressed: () { Scaffold.of(context).openDrawer(); },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      toolbarHeight: 50,
      elevation: 0,
      title: Row(
        children: [
          Text(
              'Hello, beautiful human being!',
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}