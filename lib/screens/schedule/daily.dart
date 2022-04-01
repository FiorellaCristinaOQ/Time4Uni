import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:time4uni/constants/fonts.dart';
import 'package:time4uni/screens/schedule/addevent.dart';
import 'package:time4uni/widgets/schedulebutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class DailySchedule extends StatefulWidget {
  const DailySchedule({Key? key}) : super(key: key);

  @override
  State<DailySchedule> createState() => _DailyScheduleState();
}

class _DailyScheduleState extends State<DailySchedule> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hope you're having a nice day", style: subHeading3Style,),
                    ],
                  ),
                ),
                ScheduleButton(label: "+ Add Event", onTap: ()=>Navigator.pushNamed(context, 'addevent'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: DatePicker(
              DateTime.now(),
              height: 90,
              width: 70,
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.blue,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                )
              ),
              dayTextStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    )
              ),
              monthTextStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    )
              ),
              onDateChange: (date){
                _selectedDate = date;
              }
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
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
          selectedItemColor: Colors.blueAccent,
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
              'Plans for today?',
              style: blackHeadingStyle
          )
        ],
      ),
    );
  }

}
