import 'package:flutter/material.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styled Container Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 350, 
          height: 300, 
          decoration: BoxDecoration(
            color: Colors.blue[400], 
            borderRadius: BorderRadius.circular(20), 
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5, 
                blurRadius: 7, 
                offset: const Offset(0, 3), 
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Hello, Moshiur !!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}