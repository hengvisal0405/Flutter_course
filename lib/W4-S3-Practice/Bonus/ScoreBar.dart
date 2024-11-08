import 'package:flutter/material.dart';

class Scorebar extends StatefulWidget {
  final String title;
  const Scorebar({super.key, required this.title});
  @override
  ScoreBarState createState() => ScoreBarState();
}

class ScoreBarState extends State<Scorebar> {
  int score = 0;
  void increaseScore() {
    setState(() {
      if (score < 10) {
        score++;
      }
    });
  }

  void decreaseScore() {
    setState(() {
      if (score > 0) {
        // Ensure score doesn't go below 0
        score--;
      }
    });
  }

  Color getColor() {
    double colorIncrease = score / 10;
    return Color.lerp(Colors.white, Colors.green, colorIncrease)!;
  }

  @override
  Widget build(BuildContext context) {
    double barWidth = (score / 10) * 300;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          margin: const EdgeInsets.all(30),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 500,
            height:200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: decreaseScore,
                      icon: const Icon(Icons.remove),
                    ),
                    IconButton(
                      onPressed: increaseScore,
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: barWidth,
                      decoration: BoxDecoration(
                        color: getColor(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF7dcea0),
        appBar: AppBar(
          backgroundColor: const Color(0xff5d6d7e),
          title: const Text(
            'Score Bar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child:  Column(
            children: [
              Scorebar(title: "My score in Flutter"),
              Scorebar(title: "My score in Dart"),
              Scorebar(title: "My score in React"),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
