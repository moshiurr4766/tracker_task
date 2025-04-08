import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Basic text with different sizes
              const Text(
                'Font Sizes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Small text', style: TextStyle(fontSize: 12)),
              const Text('Medium text', style: TextStyle(fontSize: 16)),
              const Text('Large text', style: TextStyle(fontSize: 24)),
              const Text('Extra large text', style: TextStyle(fontSize: 32)),
              
              const Divider(height: 30),
              
              // Font weights
              const Text(
                'Font Weights',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Thin', style: TextStyle(fontWeight: FontWeight.w100)),
              const Text('Light', style: TextStyle(fontWeight: FontWeight.w300)),
              const Text('Regular', style: TextStyle(fontWeight: FontWeight.normal)),
              const Text('Medium', style: TextStyle(fontWeight: FontWeight.w500)),
              const Text('Bold', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('Black', style: TextStyle(fontWeight: FontWeight.w900)),
              
              const Divider(height: 30),
              
              // Colors
              const Text(
                'Text Colors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Primary color', style: TextStyle(color: Colors.blue)),
              const Text('Accent color', style: TextStyle(color: Colors.redAccent)),
              const Text('Custom color', style: TextStyle(color: Color(0xFF4CAF50))),
              Text(
                'Theme primary color',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              
              const Divider(height: 30),
              
              // Combined styles
              const Text(
                'Combined Styles',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Large bold blue text',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Italic underlined text',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Text with shadow',
                style: TextStyle(
                  fontSize: 18,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              
              const Divider(height: 30),
              
              // Text in a Row with different styles
              const Text(
                'Text in a Row',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('Item 1', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Item 2', style: TextStyle(color: Colors.green)),
                  Text('Item 3', style: TextStyle(fontStyle: FontStyle.italic)),
                ],
              ),
              
              const SizedBox(height: 20),
              

              const Text(
                'RichText (multiple styles in one widget)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: 'Hello ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world! ', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: 'Flutter ', style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                      text: 'text styling',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}