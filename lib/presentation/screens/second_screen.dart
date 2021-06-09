import 'package:dermoapp/logic/cubit/camera_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key, required this.title, required this.firstScreenKey}) : super(key: key);

  final String title;
  final GlobalKey<ScaffoldState>? firstScreenKey;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GlobalKey<ScaffoldState> secondScreenKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: secondScreenKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Your camera is:'),
            BlocConsumer<CameraCubit, CameraState>(
              builder: builder,
              listener: (context,state){},
            )
          ],
        ),
      ),
    );
  }
}
