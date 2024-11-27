import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1/widgets/app_button.dart';

class WelcomeScreen extends StatelessWidget {
  final String quizTitle;
  final VoidCallback onStart;
  const WelcomeScreen(
      {super.key, required this.onStart, required this.quizTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/w4-s2/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            quizTitle,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          AppButton('Start Quiz', icon: Icons.arrow_right_alt, onTap: onStart)
        ],
      ),
    );
  }
}
