import 'package:flutter/material.dart';
import 'package:demo_app/core/widgets/app_bar.dart';
import 'widgets/theme_settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  final String _title = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: _title),
      body: ListView(children: [themeSettings(context), Divider()]),
    );
  }
}
