import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        children: [
          Text("Anxiety", style: subHeading1Style, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text("Mindfulness", style: subHeading3Style),
          const Divider(height: 20),
          Text("1. Locate a completely quiet place\n"
              "In the early stages of mindfulness practice it is important to choose a quiet place. The objective is that the space "
              "facilitates the medication. Get away from everything that can distract you, a place where you can be without noise that "
              "can interrupt you. We can recommend, if possible, that you choose a place with vegetation, where nature has a strong "
              "presence. With this step you will isolate yourself from all the elements that stress you in everyday life\n"
              "2. Sit down and keep your back straight\n"
              "You can practice Mindfulness in the lotus position, just like Buddhist monks do. But if you start with practice, you can "
              "do it more easily. The important thing is that your position allows you to keep your back straight. The reason why it is "
              "recommended that the back is straight is because that way you will not suffer muscle tension that can bother you.\n"
              "3.  Control your breathing\n"
              "What follows is to do breathing exercises. Such exercises will help you oxygenate the body and relax it. You must practice "
              "deep and slow breaths. With these exercises you will also be able to focus your attention in a sustained way on something "
              "very specific.\n"
              "4. Become aware of what is happening in your body\n"
              "To focus on your body and become aware of it, you must close your eyes and focus on the smallest events that occur in your body. "
              "Do this for at least 30 seconds: Feel your skin, the extremities of your body, become aware of your hair, how your breath fills "
              "your lungs. During these 30 seconds you can also become aware of the palpitations in your neck, among other elements of your body. "
              "With this step you will learn to manage the attentional focus, managing to focus it on small and simple stimuli, without anything "
              "interrupting your attention.\n"
              "5. - Widen your focus and take control of your breath again\n"
              "This is the last step. It consists of moving from small bodily stimuli to vital experiences. The intention is that you can devote "
              "your attention to the experiences or events that have affected you, positively or negatively, up to that moment. Do not value the "
              "experiences, do not judge them, you should only describe them, accept them, feel and become aware that such experiences are part "
              "of a reality. This step can be said to be the crucial one, as it will allow you to exercise yourself to face all kinds of experiences. "
              "After you have meditated on life experiences, contemplated them without making any judgments, you must return to controlled breathing. "
              "With controlled breathing you will be finishing the practice, and you will be ready to face reality with a better attitude.", style: bodyTextStyle),
          const SizedBox(height: 15),
          Text("Deep breathing", style: subHeading3Style),
          const Divider(height: 20),
          Text("1. Adopt the proper posture\n"
              "• We recommend sitting down and keep our back straight and completely supported by the chair, opening our shoulders, so that they do not go forward\n"
              "• Both feet must be completely flat on the ground\n"
              "• It is necessary to avoid pressure in the abdominal area\n"
              "• To relax the neck muscles it is helpful to tilt your head slightly forward\n"
              "• Finally, we must place one hand on the belly and the other on the chest\n"
              "2. Deep breathing technique \n"
              "• Breathe in through your nose, slowly and deeply , for a count of three, filling your lungs well with air\n"
              "• Hold your breath for 3 seconds\n"
              "• Breathe out slowly through your mouth, again counting to three\n"
              "• Repeat the process two or three times\n"
              "When inhaling we will make the air reach the base of the lungs, inflating the belly. When exhaling, we will expel the air and the "
              "belly will return to its position", style: bodyTextStyle),
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
              "Anxiety is not a joke, it's reality",
              style: subHeading3Style
          )
        ],
      ),
    );
  }
}