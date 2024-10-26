class Quiz {
  List<Question> questions = [];
  List<Participant> participants = [];

  void addSingleQuestion(Question singleQuestion) {
    questions.add(singleQuestion);
  }

  void addMultipleQuestions(List<Question> multipleQuestions) {
    questions.addAll(multipleQuestions);
  }

  void addParticipant(Participant participant) {
    participants.add(participant);
  }

  void calculateResults() {
    for (var participant in participants) {
      participant.calculateScore(this); // Calls calculateScore for each participant
    }
  }

  void displayResults() {
    for (var participant in participants) {
      print('${participant.firstName} ${participant.lastName} scored: ${participant.score}');
    }
  }
}

class Question {
  String? title;
  List<String>? correctAnswer;
  List<String> options;

  Question(this.title, this.correctAnswer, this.options);

  List<String>? getCorrectAnswer() {
    return correctAnswer;
  }
}

class Participant {
  String? firstName;
  String? lastName;
  int score = 0;
  Participant(this.firstName, this.lastName);

  void calculateScore(Quiz quiz) {
    for (var question in quiz.questions) {
      if (question is SingleChoice) {
        // Compare with the first correct answer in the list
        if (question.SingleAnswerChoose == question.getCorrectAnswer()?.first) {
          score += 1;
        }
      } else if (question is MultipleChoice) {
        int countCorrect;
        countCorrect = question.correctAnswer!.where((ans) => question.MultipleAnswerChoose.contains(ans)).length;
        score += countCorrect;
      }
    }
  }
}

class SingleChoice extends Question {
  String? SingleAnswerChoose;
  SingleChoice(super.title, super.correctAnswer, super.options);

  void selectAnswerSingle(String answer) {
    if (options.contains(answer)) {
      SingleAnswerChoose = answer;
    }
  }
}

class MultipleChoice extends Question {
  List<String> MultipleAnswerChoose = [];

  MultipleChoice(super.title, super.correctAnswer, super.options);

  void selectAnswerMultiple(List<String> answers) {
    for (var answer in answers) {
      if (options.contains(answer)) {
        MultipleAnswerChoose.add(answer);
      }
    }
  }
}

void main() {
  Quiz quiz = Quiz();

  SingleChoice q1 = SingleChoice("What is Cat?", ["Water"], ["Fruit", "Water", "Animal"]);

  MultipleChoice q2 = MultipleChoice("Which are the programming languages?", ["Java", "Blue language", "C++", "Dart", "HTML"], ["HTML", "Java", "C++", "Dart"]);

  quiz.addSingleQuestion(q1);
  quiz.addMultipleQuestions([q2]);

  Participant p1 = Participant("Heng", "Visal");
  Participant p2 = Participant("Heng", "Panharanith");

  quiz.addParticipant(p1);
  quiz.addParticipant(p2);

  q1.selectAnswerSingle("Water");
  q2.selectAnswerMultiple(["HTML", "Java", "C++", "Dart"]);

  quiz.calculateResults();
  quiz.displayResults();
}
