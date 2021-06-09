import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key? key, required this.title, required this.secondScreenKey}) : super(key: key);

  final String title;
  final GlobalKey<ScaffoldState>? secondScreenKey;

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
