// question_screen.dart
import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1/model/quiz.dart';
import 'package:your_project_name/W7-S1/model/submission.dart';

class QuestionScreen extends StatefulWidget {
  final Quiz quiz;
  final VoidCallback onFinish;
  final Function(int score) onScoreUpdate;
 
  const QuestionScreen({
    Key? key,
    required this.quiz,
    required this.onFinish,
    required this.onScoreUpdate,
  }) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionCount = 0;
  Submission submission = Submission();
void clickQuestion(String selectedAnswer) {
    final currentQuestion = widget.quiz.questions[questionCount];
    submission.addAnswer(currentQuestion, selectedAnswer);
    setState(() {
      if (questionCount < widget.quiz.questions.length - 1) {
        questionCount++;
      } else {
        int score = submission.getScore();
        print('Final Score: $score');
        widget.onScoreUpdate(score);
        widget.onFinish();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.quiz.questions[questionCount];
    int questionPage = questionCount + 1;
    int totalQuestions = widget.quiz.questions.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Question ${questionPage} in ${totalQuestions}",
            style: TextStyle(
              color: Color(0xfff4d03f),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            currentQuestion.title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ...currentQuestion.possibleAnswers.map((possibleAnswer) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff3498db),
                  ),
                ),
                onPressed: () {
                  print('Selected: $possibleAnswer');
                  clickQuestion(possibleAnswer);
                },
                child: Text(
                  possibleAnswer,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
        const SizedBox(
          height: 30,
        ),
       
      ],
    );
  }
}
