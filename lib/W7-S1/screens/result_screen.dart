import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1/model/quiz.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onRestart;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.onRestart, required Quiz quiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Quiz Finished!',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        Text(
          'Your Score: $score/$totalQuestions',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 30),
        // ElevatedButton(
        //   onPressed: onRestart,
        //   child: const Text('Restart Quiz'),
        // ),
        ElevatedButton.icon(
          icon: Icon(Icons.refresh),
          label: Text(
            'Restart Quiz',
          ),
          onPressed: onRestart,
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
