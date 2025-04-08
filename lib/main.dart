import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold, 
            ),
          ),
        ),
      ),
    );
  }
}

