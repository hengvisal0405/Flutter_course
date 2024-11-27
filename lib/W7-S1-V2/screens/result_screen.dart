import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1-V2/model/quiz.dart';
import 'package:your_project_name/W7-S1-V2/model/submission.dart';
import 'package:your_project_name/W7-S1/widgets/app_button.dart';

const Color appColor = Colors.blue; // Replace with your actual app color

class ResultScreen extends StatelessWidget {
  final VoidCallback onRestart;
  final Submission submission;
  final Quiz quiz;

  const ResultScreen({
    super.key,
    required this.onRestart,
    required this.submission,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    final correctAnswersCount = submission.getScore();

    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Quiz Finished!',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Your score $correctAnswersCount / ${quiz.questions.length} !",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: quiz.questions.length,
                  itemBuilder: (context, index) {
                    final question = quiz.questions[index];
                    final answer = submission.getAnswerFor(question);
                    final userAnswer = answer?.questionAnswer;
                    final isCorrect = answer?.isCorrect() ?? false;

                    return ResultItem(
                      questionIndex: index + 1,
                      question: question,
                      userAnswer: userAnswer,
                      isCorrect: isCorrect,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              AppButton('Restart Quiz',
                  icon: Icons.restart_alt, onTap: onRestart),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultItem extends StatelessWidget {
  final int questionIndex;
  final Question question;
  final String? userAnswer;
  final bool isCorrect;

  const ResultItem({
    super.key,
    required this.questionIndex,
    required this.question,
    required this.userAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: isCorrect ? Colors.green : Colors.red,
                child: Text(
                  questionIndex.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  question.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: question.possibleAnswers.map((answer) {
              // Check if the current answer is the correct one
              final isCorrectAnswer = answer == question.goodAnswer;
              final isSelected = answer == userAnswer;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Icon(
                      () {
                        if (isCorrectAnswer) {
                          return Icons.check_circle;
                        } else if (isSelected) {
                          return Icons.cancel;
                        } else {
                          return Icons.circle;
                        }
                      }(),
                      size: 16,
                      color: () {
                        if (isCorrectAnswer) {
                          return Colors.green;
                        } else if (isSelected) {
                          return Colors.red;
                        } else {
                          return Colors.grey;
                        }
                      }(),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        answer,
                        style: TextStyle(
                          color: isCorrectAnswer
                              ? Colors.green
                              : isSelected
                                  ? Colors.red
                                  : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
