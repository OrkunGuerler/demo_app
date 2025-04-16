import 'package:get_it/get_it.dart';
import 'package:camera/camera.dart';

final getIt = GetIt.instance;

Future<void> setupCamerasInjection(List<CameraDescription> cameras) async {
  getIt.registerSingleton<List<CameraDescription>>(cameras);
}
