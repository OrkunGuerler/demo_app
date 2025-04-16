import 'package:demo_app/core/widgets/app_bar.dart';
import 'package:demo_app/presentation/features/settings/widgets/theme_settings.dart';
import 'package:flutter/material.dart';

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
