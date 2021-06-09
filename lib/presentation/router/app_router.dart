import 'package:dermoapp/presentation/screens/first_screen.dart';
import 'package:dermoapp/presentation/screens/second_screen.dart';
import 'package:dermoapp/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final GlobalKey<ScaffoldState>? key = settings.arguments as GlobalKey<ScaffoldState>?;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => FirstScreen(
            title: "First Screen",
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: "Second Screen",
            firstScreenKey: key,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(
            title: "Thirst Screen",
            secondScreenKey: key,
          ),
        );
      default:
        return null;
    }
  }
}
