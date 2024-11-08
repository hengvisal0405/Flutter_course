import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  HeartState createState() => HeartState();
}

class HeartState extends State<Heart> {
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
    return Column(
      children: [
        FavoriteItem(
          title: 'Title 1',
          description: 'Description ',
          isFavorite: isFavorite1,
          onPressed: favButton1,
        ),
        FavoriteItem(
          title: 'Title 2',
          description: 'Description ',
          isFavorite: isFavorite2,
          onPressed: favButton2,
        ),
        FavoriteItem(
          title: 'Title 3',
          description: 'Description',
          isFavorite: isFavorite3,
          onPressed: favButton3,
        ),
      ],
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;
  final VoidCallback onPressed;

  const FavoriteItem({
    super.key,
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(description),
              ],
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
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
        body: const Center(
          child: Heart(),
        ),
      ),
    ));
