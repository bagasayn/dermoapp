part of 'camera_cubit.dart';

abstract class CameraState {
  const CameraState();
}

class InitialCamera extends CameraState {
  String result;

  InitialCamera({required this.result});
}
