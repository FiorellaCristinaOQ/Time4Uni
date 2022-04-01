import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              "You are not alone",
              style: subHeading1Style
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My hard freshman year", style: subHeading3Style,),
                    SizedBox(height: 10,),
                    Text("Going directly from school to university had a horrible effect on me.\n"
                        "I thought that it wouldn't be so hard, but I was wrong. By the end of\n"
                        "the first month, I was already behind everyone I knew in my class,\n"
                        "that was hard to accept, I started to think that I was useless and\n"
                        "dumb, or that I should just quit. I spent many our working on\n"
                        "rebuild my confidence in myself, which a bit late I realized that\n"
                        " was the most important thing. Thanks to the support of my\n"
                        "friends and family I managed to do well at the end, but even better,\n"
                        "I now have a very good opinion of myself and that took me a lot of\n"
                        "time. With the past of the years I have worked hard to improve\n"
                        "academically and personally and I am really happy with my results so\n"
                        "far. If you are going through a similar situation, don't be afraid of\n"
                        "asking for help, believe me when I say that the people who love can\n"
                        "make wonders for you just by listening to your problems and staying\n"
                        "by your side.", style: bodyTextStyle,),
                    SizedBox(height: 10,),
                    Text("Mariana, 21 years old, Peru", style: bodyBoldTextStyle),
                    SizedBox(height: 20,),
                    Text("The pandemic disaster", style: subHeading3Style,),
                    SizedBox(height: 10,),
                    Text("I think this might be something you can relate to. When the pandemic\n"
                        "just started, it was cool to fantasy with all the perks of virtual\n"
                        "education, but for me the reality was far away from that. I had more\n"
                        "time in my life than ever since I started uni, but no clue of what to\n"
                        "do with it, as everything was closed, so I would lose all my\n"
                        "available time doing important or even fulfilling for me. I got used\n"
                        "to doing nothing at all and when classes started again I was lost in\n"
                        "that vicious cycle. Then things got worst, time passed and the\n", style: bodyTextStyle,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
          ),
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
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {Navigator.pushNamed(context, 'home');},
          );
        },
      ),
      toolbarHeight: 70,
      elevation: 0,
      title: Row(
        children: [
          Text(
              "Share with others!",
              style: blackHeadingStyle
          )
        ],
      ),
    );
  }
}