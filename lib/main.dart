import 'package:demo_app/app.dart';
import 'package:demo_app/core/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const DemoApp(),
    ),
  );
}
