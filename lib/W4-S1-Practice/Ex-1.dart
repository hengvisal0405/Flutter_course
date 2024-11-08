// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
const String icon1 = "/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-travelling-64.png";
const String icon2 = "/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-roller-skating-50.png";
class HobbiesCard extends StatelessWidget {
  const HobbiesCard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("My hobbies "),
          centerTitle: false,
        ),
        body: Center(
          // margin: const EdgeInsets.all(40),
          child: Container(
            margin:const EdgeInsets.only(top:40),
                      child: Column(
              children: [
                Container(
                  child: Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      width: 500,
                      height: 100,
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding:const EdgeInsets.only(right: 20,left: 30),
                              child: Image.asset(
                              icon1, 
                              width: 30,
                              height: 30, 
                            ),
                            ),
                            const Text(
                              'Travelling',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10),
                  child: Card(
                    color: const Color(0xFF5D6D7E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 500,
                      height: 100,
                      padding: const EdgeInsets.all(20),
                      child:  Container(
                        child:Row(
                          children: [
                            Padding(
                              padding:const EdgeInsets.only(right: 20, left: 30),
                            child: Image.asset(
                                icon2,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            const Text(
                              'Skating',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
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
  
}

void main() {
  runApp(const HobbiesCard());
}
