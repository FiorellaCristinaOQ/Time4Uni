import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class Mood extends StatelessWidget {
  const Mood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        children: [
          Text("Mood variations", style: subHeading1Style, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text("• Consider walking, jogging, gardening, cleaning the house, cycling, swimming, lifting weights, or anything else that keeps you active\n"
              "• Exposing ourselves to situations where positive emotions arise will cause us to start catching\n"
              "• Express what your needs are and tell you about it. Once heard, we must accept it and let it go\n"
              "• Change the focus. Do a daily exercise to look for 10 positive things throughout the day\n"
              "• Live in the here and now. Focus on the present, on what you have to solve at every moment, "
              "regardless of what you will do 3 hours later", style: bodyTextStyle),
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
              "Pay attention to how you feel",
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}