import 'package:flutter/material.dart';
import 'package:demo_app/core/constants/light_color_scheme.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: lightColorScheme.surface,
  primaryColor: lightColorScheme.primary,
);
