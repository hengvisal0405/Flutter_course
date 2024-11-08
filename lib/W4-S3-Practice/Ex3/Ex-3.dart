import 'package:flutter/material.dart';

List<String> images = [
  '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/w4-s2/girl.jpg',
  '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/w4-s2/bird.jpg',
  '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/w4-s2/bird2.jpg',
  '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/w4-s2/insect.jpg',
  '/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/w4-s2/man.jpg',
];

String activeImage = images[0];

class ImageGerllary extends StatefulWidget {
  const ImageGerllary({super.key});

  @override
  ImageGerllaryState createState() => ImageGerllaryState();
}

class ImageGerllaryState extends State<ImageGerllary> {
  int i = 0;
  void nextImage() {
    setState(() {
        i = (i + 1) % images.length; 
        activeImage = images[i];
    });
  }

  void previousImage() {
    setState(() {
       i = (i - 1 + images.length) % images.length; 
        activeImage = images[i];
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: const Text(
            'Image Gallery',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: previousImage,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: nextImage,
              ),
            ),
          ],
        ),
        body: Center(
          child: Image.asset(
            activeImage,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const ImageGerllary());
}
