import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Span Color Example"),
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hello, ', // This part will be the default color
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                TextSpan(
                  text: 'Flutter!', // This part will be red
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
                TextSpan(
                  text: ' How are you?', // This part will be black
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
