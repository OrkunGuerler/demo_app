import 'package:demo_app/core/themes/dark_theme.dart';
import 'package:demo_app/core/themes/light_theme.dart';
import 'package:demo_app/core/utils/theme_provider.dart';
import 'package:demo_app/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Demo App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      routes: AppRoutes.routes,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
