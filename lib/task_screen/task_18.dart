import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Task18 extends StatefulWidget {
  const Task18({super.key});

  @override
  State<Task18> createState() => _Task18State();
}

class _Task18State extends State<Task18> {
  File? _image; // To store the picked image

  // Method to pick an image from gallery
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Update the state with the picked image
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display circular avatar or placeholder
            CircleAvatar(
              radius: 70.0,
              backgroundImage: _image != null
                  ? FileImage(_image!)
                  : const AssetImage('assets/default_avatar.png') as ImageProvider,
              child: _image == null
                  ? IconButton(
                      icon: const Icon(Icons.camera_alt, size: 30.0),
                      onPressed: _pickImage, // Open gallery to pick an image
                    )
                  : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage, // Trigger image picker on button press
              child: const Text('Choose Profile Image'),
            ),
          ],
        ),
      ),
    );
  }
}
