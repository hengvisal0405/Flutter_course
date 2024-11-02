import 'package:flutter/material.dart';

enum Weather {
  Sun(
    days: "Sun",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-sun-50.png',
    weather1: "15°",
    weather2: " -3°",
    bgColor: Colors.white,
  ),
  Mon(
    days: "Mon",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-rain-cloud-48.png',
    weather1: "12°",
    weather2: " 7°",
     bgColor: Colors.white,
  ),
  Tues(
    days: "Tues",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-cloud-48.png',
    weather1: "9°",
    weather2: " 7°",
    bgColor: Colors.white,
  ),
  Wednes(
    days: "Wed",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-sun-24.png',
    weather1: "8°",
    weather2: " -1°",
    bgColor: Colors.white,
  ),
  Thurs(
    days: "Thu",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-partly-cloudy-day-48.png',
    weather1: "5°",
    weather2: " 2°",
    bgColor: Colors.white,
  ),
  Friday(
    days: "Fri",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-rain-cloud-32.png',
    weather1: "4°",
    weather2: " -4°",
    bgColor: Colors.white,

  ),
  Saturday(
    days: "Sat",
    image:'/Users/notvalsy/Documents/CADT-Y3T1/mobile_development/flutter_app/assets/icons/icons8-sun-48.png',
    weather1: "3°",
    weather2: " -3°",
    bgColor: Colors.white,

  );

  final String days;
  final String image;
  final Color bgColor;
  final String weather1;
  final String weather2;
  const Weather(
      {required this.days,
      required this.bgColor,
      required this.image,
      required this.weather1,
      required this.weather2});
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("weather"),
      ),
      body: Container(
        margin: const EdgeInsets.all(200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //1
            SizedBox(
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Sun.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        
                      ),
                    ),
                    Image.asset(
                      Weather.Sun.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(padding:const EdgeInsets.only(top: 10) ,
                    child: 
                    Text.rich(
                       TextSpan(
                        children: [
                          TextSpan(
                            text:
                                Weather.Sun.weather1, 
                            style: const TextStyle(
                            color: Colors.black, 
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                                ),
                          ),
                          TextSpan(
                            text: Weather.Sun.weather2,
                            style: const TextStyle(
                            color: Color(0xFFBFC9CA), 
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                            ),
                          ),

                        ],
                      ),
                    ))
                    
                   

                  ],
                ),
              ),
            ),
            //2
            SizedBox(
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Mon.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Mon.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Mon.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Mon.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              //3
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Tues.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Tues.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Tues.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Tues.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              //4
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Wednes.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Wednes.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Wednes.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Wednes.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              //5
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Thurs.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Thurs.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Thurs.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Thurs.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              //6
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Friday.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Friday.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Friday.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Friday.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              //7
              width: 130,
              height: 200,
              child: Card(
                color:Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        Weather.Saturday.days,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      Weather.Saturday.image,
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: Weather.Saturday.weather1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: Weather.Saturday.weather2,
                                style: const TextStyle(
                                  color: Color(0xFFBFC9CA),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
