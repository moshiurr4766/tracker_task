import 'package:flutter/material.dart';
import 'package:task/task_screen/home.dart';
import 'package:task/task_screen/task12.dart';
import 'package:task/task_screen/task14.dart';
import 'package:task/task_screen/task_1.dart';
import 'package:task/task_screen/task_10.dart';
import 'package:task/task_screen/task_11.dart';
import 'package:task/task_screen/task_13.dart';
import 'package:task/task_screen/task_15.dart';
import 'package:task/task_screen/task_16.dart';
import 'package:task/task_screen/task_17.dart';
import 'package:task/task_screen/task_18.dart';
import 'package:task/task_screen/task_19.dart';
import 'package:task/task_screen/task_2.dart';
import 'package:task/task_screen/task_3.dart';
import 'package:task/task_screen/task_4.dart';
import 'package:task/task_screen/task_5/one.dart';
import 'package:task/task_screen/task_5/two.dart';
import 'package:task/task_screen/task_6.dart';
import 'package:task/task_screen/task_7.dart';
import 'package:task/task_screen/task_8.dart';
import 'package:task/task_screen/task_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/task1': (context) => const Task1(),
        '/task2': (context) => const Task2(),
        '/task3': (context) => const Task3(),
        '/task4': (context) => const Task4(),
        '/task5': (context) => const Task5(),
        '/two': (context) => const TwoTask5(),
        '/task6': (context) => const Task6(),
        '/task7': (context) => const Task7(),
        '/task8': (context) => const Task8(),
        '/task9': (context) => const Task9(),
        '/task10': (context) => const Task10(),
        '/task11': (context) => const Task11(),
        '/task12': (context) => const Task12(),
        '/task13': (context) => const Task13(),
        '/task14': (context) => const Task14(),
        '/task15': (context) => const Task15(),
        '/task16': (context) => const Task16(),
        '/task17': (context) => const Task17(),
        '/task18': (context) => const Task18(),
        '/task19': (context) => const Task19(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

