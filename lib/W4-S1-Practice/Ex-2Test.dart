import 'package:flutter/material.dart';

enum Product {
  dart(
    title: 'Dart',
    imagePath:
        '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/dart.png',
    description: 'the best object language',
  ),
  flutter(
    title: 'Flutter',
    imagePath:
        '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/flutter.png',
    description: 'the best widget library',
  ),
  firebase(
    title: 'Firebase',
    imagePath:
        '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/firebase.png',
    description: 'the best cloud database',
  );

  final String title;
  final String imagePath;
  final String description;

  const Product({
    required this.title,
    required this.imagePath,
    required this.description,
  });
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Products"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 40),
          child: Column(
            children: Product.values.map((product) {
              return Container(
                width: 600,
                height: 260,
                margin: const EdgeInsets.only(bottom: 20),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Image.asset(
                          product.imagePath,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          product.description,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ),
  );
}
//  child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Time",
//                       style: TextStyle(
//                         color: Color(0xFF7F8C8D),
//                         fontSize: 25,
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Image.asset(
//                       icon2,
//                       width: 30,
//                       height: 30,
//                     ),
//                   ],
//                 ),