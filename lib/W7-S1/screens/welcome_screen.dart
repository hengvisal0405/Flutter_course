import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStart;

  const WelcomeScreen({Key? key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/w4-s2/quiz-logo.png',
          width: 450,
          height: 450,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Crazyy Quiz!', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 35, 
            fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          icon: Icon(Icons.arrow_forward), 
          label: Text('Start Quiz',
          ),   
          onPressed: onStart,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
            backgroundColor: Color(0xfff0f3f4),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          ),
        ),
      ],
    );
  }
}
