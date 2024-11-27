import 'package:your_project_name/W7-S1/model/quiz.dart';

class Answer {
  Question question;
  String questionAnswer;

  Answer({
    required this.question,
    required this.questionAnswer,
  });

  bool isCorrect() {
    return questionAnswer == question.goodAnswer;
  }

  @override
  String toString() {
    return 'Answer(question: ${question.title}, selectedAnswer: $questionAnswer)';
  }
}

class Submission {
  final Map<Question, Answer> answers = {};
  void addAnswer(Question question, String selectedAnswer) {
    if (selectedAnswer.isEmpty) {
      print('No answer selected for question: ${question.title}');
    } else {
      answers[question] =
          Answer(question: question, questionAnswer: selectedAnswer);
    }
  }

  Answer? getAnswerFor(Question question) {
    return answers[question];
  }

  int getScore() {
    int totalScore = 0;
    answers.forEach((question, answer) {
      totalScore += answer.isCorrect() ? 1 : 0;
    });
    return totalScore;
  }

  void removeAnswers() {
    answers.clear();
    print('All answers have been removed.');
  }

  List<Answer> getAnsweredQuestions() {
    return answers.values.toList();
  }
}
