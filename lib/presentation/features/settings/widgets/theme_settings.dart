import 'package:flutter/material.dart';
import 'package:demo_app/core/utils/theme_provider.dart';
import 'package:provider/provider.dart';

Widget themeSettings(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);

  return SwitchListTile(
    title: const Text("Dark Mode"),
    value: themeProvider.themeMode == ThemeMode.dark,
    onChanged: (value) {
      themeProvider.setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
    },
  );
}
