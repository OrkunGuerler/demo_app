import 'package:flutter/material.dart';
import 'package:demo_app/core/constants/dark_color_scheme.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: darkColorScheme,
  scaffoldBackgroundColor: darkColorScheme.surface,
  primaryColor: darkColorScheme.primary,
);
