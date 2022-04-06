import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        children: [
          Text("Nutrition", style: subHeading1Style, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text("Increased appetite", style: subHeading3Style),
          const Divider(height: 20),
          Text("• Recognizes stress warning signs such as anxiety, irritability, and muscle tension\n"
              "• Before eating, ask yourself why you’re eating: are you really hungry, or is it stress or anxiety?\n"
              "• If you’re tempted to eat but not by hunger, look for a distraction\n"
              "• Eat a healthy diet, such as whole grains and a variety of fruits and vegetables. Try to incorporate most food groups into your meals\n"
              "• Keep a record of your behavior and eating habits to look for patterns and connections, and then discuss how to overcome them\n"
              "• Don’t skip meals, especially breakfast. If you’re in a hurry, grab a fruit before you head out\n"
              "• Identify foods that comfort you but are very caloric and do not have them in your home\n"
              "• Learn problem-solving techniques to anticipate challenges and face setbacks\n"
              "• Practice relaxation techniques, such as yoga, stretching, massage, deep breathing, or meditation\n"
              "• Do regular physical activity or exercise\n"
              "• Get enough sleep\n"
              "• Ask your family and friends to support you", style: bodyTextStyle),
          const SizedBox(height: 15),
          Text("Appetite loss", style: subHeading3Style),
          const Divider(height: 20),
          Text("• Make 5 or 6 small meals a day and have a snack whenever you are hungry\n"
              "• Don’t limit the amount of food you eat\n"
              "• Determine what times of the day you feel hungry and eat at those times\n"
              "• Carry a snack bag with you and have your favorite foods on hand to eat\n"
              "• Increase calories and protein in foods by incorporating sauces, meat juice, butter, cheese, sour cream, cream and milk mixture, whipped cream, and nuts or nut butters\n"
              "• Drink fluid between meals, rather than with meals, which will make you feel full very quickly. If you can, drink more caloric fluids, such as sports drinks with electrolytes\n"
              "• Ask family or friends to buy food and prepare food for you when you are too tired to go shopping or cook. Consider also buying ready-made meals\n"
              "• Try eating in a friendly environment with family or friends\n"
              "• If you are having problems with the taste of food, try adding spices and condiments to make them more appetizing\n"
              "• If you experience changes in taste, such as a metallic taste in your mouth, try sucking on hard candies such as mints or lemon tablets before meals\n"
              "• Eat nutritious snacks that are high in calories and protein. These include dried fruits, nuts and nut butters, yogurt, cheeses, eggs, milk shakes, ice cream, cereal, pudding, and protein bars or granola bars\n"
              "• Try placing food on smaller plates instead of large plates\n"
              "• If the smell or taste of food makes you nauseous, eat foods that are cold or at room temperature. This will decrease the smell and reduce the taste\n"
              "• Try light exercise, such as walking for 20 minutes, about an hour before meals. This will help stimulate appetite", style: bodyTextStyle),
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
              "Happy belly, happy life",
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}