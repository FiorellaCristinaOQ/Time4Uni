import 'package:flutter/material.dart';
import 'package:time4uni/screens/community/community.dart';
import 'package:time4uni/screens/health/anxiety.dart';
import 'package:time4uni/screens/health/health.dart';
import 'package:time4uni/screens/health/mood.dart';
import 'package:time4uni/screens/health/nutrition.dart';
import 'package:time4uni/screens/health/pain.dart';
import 'package:time4uni/screens/login/login.dart';
import 'package:time4uni/screens/login/signup.dart';
import 'package:time4uni/screens/login/password.dart';
import 'package:time4uni/screens/home/home.dart';
import 'package:time4uni/screens/schedule/addevent.dart';
import 'package:time4uni/screens/schedule/daily.dart';
import 'package:time4uni/database/dbhelper.dart';
import 'package:time4uni/screens/tasks/todoscreen.dart';

Future<void> main() async {
  await DBHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time4Uni',
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'forgot': (context) => MyPassword(),
        'home': (context) => HomePage(),
        'schedule': (context) => DailySchedule(),
        'tasks': (context) => TodoListScreen(),
        'health': (context) => Health(),
        'community': (context) => CommunityPage(),
        'addevent': (context) => AddEventPage(),
        'anxiety': (context) => Anxiety(),
        'pain': (context) => Pain(),
        'mood': (context) => Mood(),
        'nutrition': (context) => Nutrition(),
      },
    );
  }
}