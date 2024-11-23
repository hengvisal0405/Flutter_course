import 'package:flutter/material.dart';
import 'jokes.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(MaterialApp(
      home: FavoriteJokesApp(),
    ));

class FavoriteJokesApp extends StatefulWidget {
  @override
  State<FavoriteJokesApp> createState() => _FavoriteJokesAppState();
}

class _FavoriteJokesAppState extends State<FavoriteJokesApp> {
  int? _favoriteIndex;

  void setFavorite(int index) {
    setState(() {
      if (_favoriteIndex == index) {
        _favoriteIndex = null;
      } else {
        _favoriteIndex = index;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, jokeIndex) {
          final joke = jokes[jokeIndex];
          final isSelectedAsFavorite = _favoriteIndex == jokeIndex;

          return FavoriteCard(
            jokes: joke,
            isFavorite: isSelectedAsFavorite,
            onFavoriteClick: () {
              setFavorite(jokeIndex);
            },
          );
        },
      ),

    );
  }
}

class FavoriteCard extends StatelessWidget {
  final Jokes jokes;
  final bool isFavorite;
  final VoidCallback onFavoriteClick;

  const FavoriteCard({
    Key? key,
    required this.jokes,
    required this.isFavorite,
    required this.onFavoriteClick,
  }) : super(key: key);

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
                  jokes.title,
                  style:
                      TextStyle(color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(jokes.description),
              ],
            ),
          ),
          IconButton(
            onPressed: onFavoriteClick,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
            
          )
        ],
      ),
    );
  }
}
