import 'package:flutter/material.dart';
import 'package:your_project_name/W6-S1-Practice/EXERCISE-3/screen/temperature.dart';
import 'package:your_project_name/W6-S1-Practice/EXERCISE-3/screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _checkScreen = true;

  void switchScreen() {
    setState(() {
      _checkScreen = !_checkScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
  Widget screen;

  if (_checkScreen) {
    screen = Welcome(
      pressedButton: switchScreen,
    );
  } else {
    screen = Temperature();
  }

  return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff16C062),
              Color(0xff00BCDC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: screen, 
      ),
    ),
  );
}

}

void main() {
  runApp(const TemperatureApp());
}
