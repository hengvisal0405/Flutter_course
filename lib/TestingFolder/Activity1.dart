import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 400,
                color: Colors.blue,
              ),
              Container(

                child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 400, 
                      height: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Container(
                      color: Colors.yellow,
                      height: 100,
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      height: 100,
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                      color: Colors.yellow,
                      height: 100,
                    )),
              
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(child: 
              Container(
                color: Colors.pink,
              )
              ),
            ],
            

          ),
        ),
      ),
    ),
  );
}
