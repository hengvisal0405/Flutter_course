import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1-V2/screens/question_screen.dart';
import 'screens/result_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:your_project_name/W7-S1-V2/model/quiz.dart';
import 'package:your_project_name/W7-S1-V2/model/submission.dart';



Color appColor = Colors.blue[500] as Color;

class QuizApp extends StatefulWidget {
  const QuizApp(this.quiz, {super.key});

  final Quiz quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  QuizState quizState = QuizState.notStarted;
  int currentQuestionIndex = 0;
  Submission submission = Submission();

  void onStart() {
    setState(() {
      quizState = QuizState.started;
    });
  }

  void onRestart() {
    setState(() {
      quizState = QuizState.notStarted;
      currentQuestionIndex = 0;
      submission = Submission();
    });
  }

  void onTap(String selectedAnswer) {
    setState(() {
      final currentQuestion = widget.quiz.questions[currentQuestionIndex];
      submission.addAnswer(currentQuestion, selectedAnswer);

      if (currentQuestionIndex < widget.quiz.questions.length - 1) {
        currentQuestionIndex++;
      } else {
        quizState = QuizState.finished;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    switch (quizState) {
      case QuizState.notStarted:
        screen = WelcomeScreen(
          onStart: () {
            onStart();
          },
          quizTitle: 'Crazy Quizz',
        );
        break;
      case QuizState.started:
        final currentQuestion = widget.quiz.questions[currentQuestionIndex];
        screen = QuestionScreen(
          question: currentQuestion,
          onTap: (selectedAnswer) {
            onTap(selectedAnswer);
          },
        );
        break;
      case QuizState.finished:
        screen = ResultScreen(
          onRestart: () {
            onRestart();
          },
          quiz: widget.quiz,
          submission: submission,
        );
        break;
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: screen,
      ),
    );
  }
}

enum QuizState {
  notStarted,
  started,
  finished,
}
