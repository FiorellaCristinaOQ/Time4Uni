import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        children: [
          Text("You are not alone", style: subHeading1Style, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text("Try sports first", style: subHeading3Style),
          const Divider(height: 20),
          Text("Dealing with stress at college was easy for me, I played intramural sports, varsity sports and community sports. "
              "Nothing clears your mind better and enhances socialization with others than touch-football, soccer, ice hockey, "
              "basketball, volleyball, fast-pitch softball, etc. And when I wasn’t doing that, I refereed/umpired intramural and "
              "high school and college sports to have more fun, clear the mind, get exercise and improve my people management skills."
              "There is no stress when you work on your mind and body in tandem.", style: bodyTextStyle),
          const SizedBox(height: 10),
          Text("Tom, Mar 2017", style: bodyBoldTextStyle, textAlign: TextAlign.end),
          const SizedBox(height: 15),
          Text("For anyone who needs to read this", style: subHeading3Style),
          const Divider(height: 20),
          Text("It’s absolutely normal to feel stressed as a university student. Projects, assignments, deadlines, professors; the whole "
              "deal can be a bit overwhelming to be honest. But don't worry, you are not alone! You are one among millions of students "
              "who feel the same! There is absolutely no need to be stressed due to College! Depending on the degree you’re studying your "
              "levels of stress may vary. But assuming a general standpoint it’s safe to say that whatever is thrown at you, you’ll be able "
              "to manage it sweetly. Always remember not to lose track of why you’re there in the first place and to have lots of fun! This "
              "is what you choose to do because you had a good reason to take this challenge and no one said it was going to be easy, but "
              "what you'll get from this will be amazing.", style: bodyTextStyle),
          const SizedBox(height: 10),
          Text("Vivian, Feb 2021", style: bodyBoldTextStyle, textAlign: TextAlign.end),
          const SizedBox(height: 15),
          Text("Just in case you didn't know", style: subHeading3Style),
          const Divider(height: 20),
          Text("It is extremely important to first understand the meaning of stress. There are two types of stress: GOOD STRESS AND BAD STRESS. "
              "We generally interpret stress as bad stress only that which causes emotional mental and physical discomfort. For eg. In your "
              "case you feel worried as to how to study and get 90% is in fact a positive stress, It is this stress that will eventually motivate "
              "you to study. But in case there Is zero stress about studies where in you feel when time will come I will do it. And you tend to "
              "play all the while like the grass hopper and when exams are close you get stressed. This is called a negative or a bad stress and is "
              "not very helpful. First it is important to find out what category of stress you gall into. If you fall in the first category, then "
              "you can reduce the stress by changing the way you think.", style: bodyTextStyle),
          const SizedBox(height: 10),
          Text("Victor, Nov 2016", style: bodyBoldTextStyle, textAlign: TextAlign.end),
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
            onPressed: () {Navigator.pushNamed(context, 'home');},
          );
        },
      ),
      toolbarHeight: 50,
      elevation: 0,
      title: Row(
        children: [
          Text(
              "Share with others!",
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}