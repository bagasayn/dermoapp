import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  GlobalKey<ScaffoldState> firstScreenKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: firstScreenKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          child: Text('Next screen'),
          onTap: () {
            Navigator.of(context).pushNamed("/second", arguments: firstScreenKey);
          },
        ),
      ),
    );
  }
}
