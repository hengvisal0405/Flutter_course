import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SceneSwitcher(),
    );
  }
}

class SceneSwitcher extends StatefulWidget {
  @override
  _SceneSwitcherState createState() => _SceneSwitcherState();
}

class _SceneSwitcherState extends State<SceneSwitcher> {
  // Variable to keep track of the current scene (0 for A, 1 for B)
  int _currentScene = 0;

  // Method to switch scenes
  void _switchScene() {
    setState(() {
      _currentScene = (_currentScene + 1) % 2; // Looping between 0 and 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scene Switcher'),
      ),
      body: Center(
        child: _currentScene == 0 ? SceneA() : SceneB(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _switchScene,
        child: Icon(Icons.swap_horiz), // Icon to indicate switching
      ),
    );
  }
}

// Scene A Widget
class SceneA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Scene A',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

// Scene B Widget
class SceneB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child:const  Center(
        child: Text(
          'Scene B',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
