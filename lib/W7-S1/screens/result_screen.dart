import 'package:flutter/material.dart';
import 'package:your_project_name/W7-S1/model/quiz.dart';
import 'package:your_project_name/W7-S1/model/submission.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final Quiz quiz;
  final int totalQuestions;
  final VoidCallback onRestart;
  final Submission submission;

  const ResultScreen({
    Key? key,
    required this.quiz,
    required this.score,
    required this.totalQuestions,
    required this.onRestart,
    required this.submission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              'Quiz Finished!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Your Score: $score/$totalQuestions',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: quiz.questions.length,
              itemBuilder: (context, index) {
                final question = quiz.questions[index];
                final answer = submission.getAnswerFor(question);
                final userAnswer = answer?.questionAnswer;
                print('Question: ${question.title}');
                print('User Answer: ${userAnswer}');
                print('Correct Answer: ${question.goodAnswer}');
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              question.title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: question.possibleAnswers.map((answer) {
                          bool isCorrectAnswer = answer == question.goodAnswer;
                          bool isUserAnswer = answer == userAnswer;

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                              children: [
                                Icon(
                                  isCorrectAnswer
                                      ? Icons.check_circle
                                      : isUserAnswer
                                          ? Icons.close
                                          : Icons.circle_outlined,
                                  color: isCorrectAnswer
                                      ? Colors.green
                                      : isUserAnswer
                                          ? Colors.red
                                          : Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  answer,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: isCorrectAnswer
                                        ? Colors.green
                                        : isUserAnswer
                                            ? Colors.red
                                            : Colors.black,
                                    fontWeight: isCorrectAnswer || isUserAnswer
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your Answer: $userAnswer',
                        style: TextStyle(
                          fontSize: 16,
                          color: userAnswer == question.goodAnswer
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ElevatedButton.icon(
                icon: Icon(Icons.refresh, color: Colors.blue),
                label: Text(
                  'Restart Quiz',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                onPressed: onRestart,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color(0xfff0f3f4),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
