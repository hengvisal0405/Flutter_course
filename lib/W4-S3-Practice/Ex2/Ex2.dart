import 'package:flutter/material.dart';

class FavoriteHeart extends StatefulWidget {
  const FavoriteHeart({super.key});

  @override
  HeartState createState() => HeartState();
}

class HeartState extends State<FavoriteHeart> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;

  void favButton1() {
    setState(() {
      isFavorite1 = !isFavorite1;
    });
  }

  void favButton2() {
    setState(() {
      isFavorite2 = !isFavorite2;
    });
  }

  void favButton3() {
    setState(() {
      isFavorite3 = !isFavorite3;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor1;
    if (isFavorite1) {
      buttonColor1 = Colors.red;
    } else {
      buttonColor1 = Colors.grey;
    }

    Color buttonColor2;
    if (isFavorite2) {
      buttonColor2 = Colors.red;
    } else {
      buttonColor2 = Colors.grey;
    }

    Color buttonColor3;
    if (isFavorite3) {
      buttonColor3 = Colors.red;
    } else {
      buttonColor3 = Colors.grey;
    }

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: .5, color: Colors.grey),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10.0),
                    Text('description')
                  ],
                ),
              ),
              IconButton(
                onPressed: favButton1,
                icon: Icon(
                  Icons.favorite,
                  color: buttonColor1,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: .5, color: Colors.grey),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10.0),
                    Text('description')
                  ],
                ),
              ),
              IconButton(
                onPressed: favButton2,
                icon: Icon(
                  Icons.favorite,
                  color: buttonColor2,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: .5, color: Colors.grey),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10.0),
                    Text('description')
                  ],
                ),
              ),
              IconButton(
                onPressed: favButton3,
                icon: Icon(
                  Icons.favorite,
                  color: buttonColor3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Buttons"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: FavoriteHeart(),
        ),
      ),
    ));
