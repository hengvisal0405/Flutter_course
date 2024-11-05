import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Buttons"),
        ),
        body: const Center(
          child: ToggleButton(), // Use the ToggleButton widget
        ),
      ),
    ));

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isSelected = false; // Initial state

  void toggleButton() {
    setState(() {
      isSelected = !isSelected; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    // Define the background color based on the isSelected state
    Color buttonColor = isSelected ? Colors.green : const Color(0xFF85C1E9);

    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, // Set the button color
        ),
        onPressed: toggleButton, // Call the method to toggle state
        child: Text(
          isSelected ? "Selected" : "Not Selected",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
