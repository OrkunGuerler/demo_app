import 'dart:io';

import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      body: Image.file(File(imagePath)),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Retake a picture',
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
