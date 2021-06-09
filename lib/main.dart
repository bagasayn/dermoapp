import 'package:dermoapp/logic/cubit/camera_cubit.dart';
import 'package:dermoapp/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CameraCubit>(
      create: (context) => CameraCubit(),
      child: MaterialApp(
        title: 'DermoApp',
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
