import 'package:camera/camera.dart';
import 'package:demo_app/app.dart';
import 'package:demo_app/core/di/get_cameras.dart';
import 'package:demo_app/core/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final List<CameraDescription> cameras = await availableCameras();

  await setupCamerasInjection(cameras);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const DemoApp(),
    ),
  );
}
