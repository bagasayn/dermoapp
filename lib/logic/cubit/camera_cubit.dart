import 'package:bloc/bloc.dart';

part 'camera_state.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(InitialCamera(result: 'Wait'));

  void init() => emit(InitialCamera(result: 'Initialized'));

  void error() => emit(InitialCamera(result: 'Error'));
}
