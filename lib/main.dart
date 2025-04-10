import 'package:flutter/material.dart';
import 'package:task/task_screen/task_1.dart';
import 'package:task/task_screen/task_2.dart';
import 'package:task/task_screen/task_3.dart';
import 'package:task/task_screen/task_4.dart';
import 'package:task/task_screen/task_5/one.dart';
import 'package:task/task_screen/task_5/two.dart';
import 'package:task/task_screen/task_6.dart';
import 'package:task/task_screen/task_7.dart';
import 'package:task/task_screen/task_8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/task8',
      routes: {
        '/task1': (context) => const Task1(),
        '/task2': (context) => const Task2(),
        '/task3': (context) => const Task3(),
        '/task4': (context) => const Task4(),
        '/one': (context) => const OneTask5(),
        '/two': (context) => const TwoTask5(),
        '/task6': (context) => const Task6(),
        '/task7': (context) => const Task7(),
        '/task8': (context) => const Task8(),
      },

    );
  }
}

