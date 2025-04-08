import 'package:flutter/material.dart';

class OneTask5 extends StatefulWidget {
  const OneTask5({super.key});

  @override
  State<OneTask5> createState() => _OneTask5State();
}

class _OneTask5State extends State<OneTask5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/two');
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}