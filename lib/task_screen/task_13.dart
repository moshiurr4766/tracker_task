import 'package:flutter/material.dart';

class Task13 extends StatelessWidget {
  const Task13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const CustomAppBarScreen(),
    );
  }
}

class CustomAppBarScreen extends StatelessWidget {
  const CustomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/task11/logo2.png'),
        ),
        title: const Text(
          'Custom AppBar',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search button pressed')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Menu button pressed')),
              );
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: const Center(
        child: Text(
          'App Content Goes Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}