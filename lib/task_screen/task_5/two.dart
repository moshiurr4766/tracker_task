import 'package:flutter/material.dart';


class TwoTask5 extends StatefulWidget {
  const TwoTask5({super.key});

  @override
  State<TwoTask5> createState() => _TwoTask5State();
}

class _TwoTask5State extends State<TwoTask5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text(
          'This is the second screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}