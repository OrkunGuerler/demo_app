import 'dart:io';

import 'package:demo_app/core/widgets/app_bar.dart';
import 'package:demo_app/presentation/features/camera/views/show_results_view.dart';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  final String _title = 'Display the Picture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: _title),
      body: Image.file(File(imagePath)),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed:
            () async => await Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => ShowResultsView(imagePath: imagePath),
              ),
            ),
        child: Icon(Icons.text_snippet_outlined),
      ),
    );
  }
}
