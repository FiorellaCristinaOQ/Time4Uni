import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              "Techniques to deal with it",
              style: subHeading1Style
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mindfulness", style: subHeading3Style,),
                SizedBox(height: 10,),
                Text("Mindfulness is all about focusing on being intensely aware on your feelings and sensations at the moment, without "
                    "interpretation or judgment. It involves breathing methods and other practices to relax the body and mind and help reduce stress."
                    "Going for a walk can be good exercise, but it’s easy being distracted when we are caught up in our thoughts. "
                    "It is always a good way to explore the thoughts you have instead of letting them for another time. If you’re "
                    "finding it difficult to be still, it’s important to take time out of your day. Mindfulness can help you refocus your energy."
                    "Also, keeping a journal can be a great way to reflect on your thoughts and"
                    "feelings during the day in a private and safe way.", style: bodyTextStyle,),
                SizedBox(height: 20,),
                Text("Deep breathing", style: subHeading3Style,),
                SizedBox(height: 10,),
                Text("It can be useful to take a few minutes from your day to focus on your breathing. Find some place and a position where you"
                    "feel comfortable and breathe in through your nose. Remember to let your belly fill with air. Then breathe out through "
                    "your nose. If you find this a bit complicated, place a hand on your belly and when you breathe in, your belly should rise "
                    "and, as you breathe out, it should lower. Sometimes closing your eyes while doing this can be of great help to feel "
                    "relaxed instantly.", style: bodyTextStyle,),
                SizedBox(height: 20,),
                Text("Meditation and visualization", style: subHeading3Style,),
                SizedBox(height: 10,),
                Text("Meditation is a simple practice available to all, which can reduce stress, increase calmness and clarity and promote happiness. "
                    "For this you should also find a comfortable, quite and calm place and close", style: bodyTextStyle,),
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
            onPressed: () {Navigator.pushNamed(context, 'health');},
          );
        },
      ),
      toolbarHeight: 70,
      elevation: 0,
      title: Row(
        children: [
          Text(
              "Anxiety",
              style: blackHeadingStyle
          )
        ],
      ),
    );
  }
}