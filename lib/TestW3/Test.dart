import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("My hobbies"),
        ),
        body: Container(
           margin: const EdgeInsets.all(40),
           child: Column(
            children: [
              Center(
                child: Container(
                child: Card(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 300,
                    height: 100,
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.travel_explore,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
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
               
              ),
            ],
            
            
        

            
           ),
           

           
        ),
      ),
      

    

    )

  );
}
