import 'package:demo_app/core/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class ShowResultsView extends StatefulWidget {
  final String imagePath;

  const ShowResultsView({super.key, required this.imagePath});

  @override
  State<ShowResultsView> createState() => _ShowResultsViewState();
}

class _ShowResultsViewState extends State<ShowResultsView> {
  final String _title = 'Results';

  final TextRecognizer _textRecognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );

  late final RecognizedText _recognizedText;

  Future<void> _processImage(String imagePath) async {
    _recognizedText = await _textRecognizer.processImage(
      InputImage.fromFilePath(imagePath),
    );

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _textRecognizer.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: _title),
      body: FutureBuilder<void>(
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text(_recognizedText.text);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
        future: _processImage(widget.imagePath),
      ),
    );
  }
}
