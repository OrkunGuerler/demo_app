import 'package:demo_app/presentation/features/camera/camera_page.dart';
import 'package:demo_app/presentation/features/home/home_page.dart';
import 'package:demo_app/presentation/features/settings/settings_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    '/home': (context) => HomePage(),
    '/camera': (context) => CameraPage(),
    '/settings': (context) => SettingsPage(),
  };
}
