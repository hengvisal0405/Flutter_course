class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});

  @override
  String toString() {
    return 'Quiz: $title, Questions: ${questions.map((q) => q.toString()).join(', ')}';
  }
}
class Question {
  final String title;
  final String goodAnswer;
  final List<String> possibleAnswers;

  Question({
    required this.title,
    required this.goodAnswer,
    required this.possibleAnswers,
  });

  @override
  String toString() {
    return 'Question(title: $title, goodAnswer: $goodAnswer, possibleAnswers: $possibleAnswers)';
  }
}

