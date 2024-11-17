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
  // Variable to keep track of the current scene index
  int _currentSceneIndex = 0;

  // List to store the scenes
  final List<Widget> _scenes = [SceneA(), SceneB(), SceneC()];

  // Method to switch scenes
  void _switchScene() {
    setState(() {
      _currentSceneIndex =
          (_currentSceneIndex + 1) % _scenes.length; // Loop through scenes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scene Switcher with Stack'),
      ),
      body: Stack(
        children: [
          // Display all scenes, but only show the current scene
          ..._scenes.asMap().entries.map((entry) {
            int index = entry.key;
            Widget scene = entry.value;
            return Positioned.fill(
              child: Visibility(
                visible: _currentSceneIndex == index,
                child: scene,
              ),
            );
          }).toList(),
        ],
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
      child: const Center(
        child: Text(
          'Scene B',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

// Scene C Widget (added a third scene)
class SceneC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Scene C',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
