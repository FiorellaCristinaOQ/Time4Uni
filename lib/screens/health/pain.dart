import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class Pain extends StatelessWidget {
  const Pain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        children: [
          Text("Physical pain", style: subHeading1Style, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text("In case you are feeling any kind of physical pain", style: subHeading3Style),
          const Divider(height: 20),
          Text("• Stay connected to family, friends, and community creatively\n"
              "• Manage difficult emotions with acceptance, mindfulness, and relaxing and/or enjoyable activities\n"
              "• Avoiding substance use, constant worry, and high-risk behaviors\n"
              "• Practicing positive lifestyles such as physical activity and healthy eating\n"
              "• Use of acceptance, and reformulation and resolution of problems when necessary\n"
              "• Practice good sleep habits\n"
              "• If this doesn't work, go see an specialist", style: bodyTextStyle),
          const SizedBox(height: 15),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
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
          items: const [
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
            icon: const Icon(Icons.arrow_back_rounded, size: 20),
            onPressed: () {Navigator.pushNamed(context, 'health');},
          );
        },
      ),
      toolbarHeight: 50,
      elevation: 0,
      title: Row(
        children: [
          Text(
              "Hear what your body has to say",
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}