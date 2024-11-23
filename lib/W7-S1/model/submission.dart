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
}

class Submission {
  List<Answer> answers = [];
  int getScore() {
    int totalScore = 0;
    for (var answer in answers) {
      totalScore += answer.isCorrect() ? 1 : 0;
    }
    return totalScore;
  }

  Answer getAnswerFor(Question question) {
    for (var answer in answers) {
      if (answer.question == question) {
        return answer;
      }
    }
    return Answer(question: question, questionAnswer: '');
  }
  void addAnswer(Question question, String answer) {
    var existingAnswer = answers.firstWhere(
      (ans) => ans.question == question,
      orElse: () => Answer(question: question, questionAnswer: ''),
    );
    existingAnswer.questionAnswer = answer;
    if (!answers.contains(existingAnswer)) {
      answers.add(existingAnswer);
    }
  }
  void removeAnswers() {
    answers.clear();
  }
}
