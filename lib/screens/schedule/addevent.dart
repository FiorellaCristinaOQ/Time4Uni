import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time4uni/controllers/eventcontroller.dart';
import 'package:time4uni/screens/schedule/eventinputfield.dart';
import '../../constants/fonts.dart';
import 'package:intl/intl.dart';
import 'package:time4uni/widgets/schedulebutton.dart';
import 'package:time4uni/models/event.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final EventController _eventController = Get.put(EventController());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _endTime = "9:30PM";
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  String _selectedRepeat = "None";
  List<String> repeatList=[
    "None",
    "Daily",
    "Weekly",
    "Monthly"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              Text("Add Event", style: subHeading2Style),
              EventInputField(title: 'Event', hint: 'Enter the name of the event', controller: _titleController),
              EventInputField(title: 'Description', hint: "Enter the event's description", controller: _noteController),
              EventInputField(
                title: 'Date',
                hint: DateFormat.yMd().format(_selectedDate),
                widget: IconButton(
                  icon: Icon(Icons.calendar_today_rounded),
                  onPressed: (){
                    _getDateFromUser();
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: EventInputField(
                      title: "Start Time",
                      hint: _startTime,
                      widget: IconButton(
                        onPressed: (){
                          _getTimeFromUser(isStartTime:true);
                        },
                        icon: Icon(Icons.access_time_rounded),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: EventInputField(
                      title: "End Time",
                      hint: _endTime,
                      widget: IconButton(
                        onPressed: (){
                          _getTimeFromUser(isStartTime:false);
                        },
                        icon: Icon(Icons.access_time_rounded),
                      ),
                    ),
                  )
                ],
              ),
              EventInputField(
                title: "Repeat",
                hint: "$_selectedRepeat",
                widget: DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 30,
                  elevation: 4,
                  underline: Container(height: 0),
                  onChanged: (String? newValue){
                    setState(() {
                      _selectedRepeat = newValue!;
                    });
                  },
                  items: repeatList.map<DropdownMenuItem<String>>((String? value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value!),
                    );
                  }
                  ).toList(),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ScheduleButton(label: "Create event", onTap: ()=>_validateData())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _validateData(){
    if(_titleController.text.isNotEmpty&&_noteController.text.isNotEmpty){
      _addEventToDb();
      Navigator.pushNamed(context, 'schedule');
    }else if(_titleController.text.isEmpty ||_noteController.text.isEmpty) { // This is not working properly :(
      Get.snackbar("Required", "All fields are required",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.grey,
        icon: const Icon(Icons.warning_amber_rounded)
      );
    }
  }

  _addEventToDb() async {
    int value = await _eventController.addEvent(
      event: Event(
        title: _titleController.text,
        note: _noteController.text,
        date: DateFormat.yMd().format(_selectedDate),
        startTime: _startTime,
        endTime: _endTime,
        repeat: _selectedRepeat,
        isCompleted: 0,
      )
    );
    print("My id is "+"$value");
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_rounded, size: 20),
            onPressed: () {Navigator.pushNamed(context, 'schedule');},
          );
        },
      ),
      toolbarHeight: 50,
      elevation: 0,
    );
  }

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2100)
    );
    if(_pickerDate!=null){
      setState(() {
        _selectedDate = _pickerDate;
      });
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if(pickedTime==null){
      print("Time cancelled");
    }else if(isStartTime==true){
      setState(() {
        _startTime = _formatedTime;
      });
    }else if(isStartTime==false){
      setState(() {
        _endTime = _formatedTime;
      });
    }
  }

  _showTimePicker(){
    return showTimePicker(
      initialEntryMode: TimePickerEntryMode.input,
      context: context,
      initialTime: TimeOfDay(
        hour: int.parse(_startTime.split(":")[0]),
        minute: int.parse(_startTime.split(":")[1].split(" ")[0])
      )
    );
  }
}
