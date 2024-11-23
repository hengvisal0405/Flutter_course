import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1/screens/question_screen.dart';
import 'package:your_project_name/W7-S1/screens/result_screen.dart';
import 'package:your_project_name/W7-S1/screens/welcome_screen.dart';
import 'model/quiz.dart';

enum QuizState {
  notStarted,
  started,
  finished,
}
Color appColor = Colors.blue[500] as Color;


class QuizApp extends StatefulWidget {
  final Quiz quiz;
  const QuizApp({super.key, required this.quiz});
  @override
  State<QuizApp> createState() => _QuizAppState();
}


class _QuizAppState extends State<QuizApp> {
  QuizState quizState = QuizState.notStarted;
  int score = 0;
  void startQuiz() {
    setState(() {
      quizState = QuizState.started;
    });
  }
  void finishQuiz() {
    setState(() {
      quizState = QuizState.finished;
    });
  }
  void resetQuiz() {
    setState(() {
      quizState = QuizState.notStarted;
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget currentScreen;
    switch (quizState) {
      case QuizState.notStarted:
        currentScreen = WelcomeScreen(onStart: startQuiz);
        break;
      case QuizState.started:
        currentScreen = QuestionScreen(
          quiz: widget.quiz,
          onFinish: finishQuiz,
          onScoreUpdate: (int updatedScore) {
            setState(() {
              score = updatedScore;
            });
          },
        );
        break;
      case QuizState.finished:
        currentScreen = ResultScreen(
          quiz: widget.quiz, 
          score: score,
          totalQuestions: widget.quiz.questions.length,
          
          onRestart: resetQuiz,
        );
        break;
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Center(child: currentScreen),
      ),
    );
  }
}
