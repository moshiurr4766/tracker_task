import 'package:flutter/material.dart';
import 'package:task/task_screen/task_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/task1',
      routes: {
        '/task1': (context) => const Task1(),

      },

    );
  }
}

