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
          title: const Text("Products "),
        ),
        body:Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                width: 600,
                height: 250,
                child: Card(
                  
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 30),
                        child: Image.asset(
                          Product.dart.imagePath,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(
                            left: 30),
                        child:  Text(
                          Product.dart.title,
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(left: 30),
                        child:  Text(
                          Product.dart.description,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 600,
                height: 250,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          Product.flutter.imagePath,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 30),
                      child:Text(
                        Product.flutter.title,
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(left:30),
                      child:  Text(
                          Product.flutter.description,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
              Container(
                width: 600,
                height: 250,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          Product.firebase.imagePath,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 30),
                      child: Text(
                        Product.firebase.title,
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 30),
                      child: Text(
                        Product.firebase.description,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      
                      ),
                      )

                       
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
    ),
  );
}

