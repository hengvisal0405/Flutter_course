import 'package:flutter/material.dart';
enum Buttons {
  btnSubmit(
    backgroundColor:Colors.blue,
    icon:'/assets/icons/icons8-tick-50.png',
    text: 'Submit',
  ),
  btnTime(
    backgroundColor: Colors.green,
    icon:'/assets/icons/icons8-time-24.png',
    text: 'Time',
  ),
  btnAccount(
    backgroundColor: Color(0xFFB3B6B7),
    icon:'/assets/icons/icons8-account-50.png',
    text: 'Account',
  );

  final String icon;
  final Color backgroundColor;
  final String text;

  const Buttons({
    required this.icon,
    required this.backgroundColor,
    required this.text,
  });
}

void main() {
  void onPressed() {
    print("Jelllo");
  }

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Customer buttons"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    // primary:Colors.blue,
                    backgroundColor: Buttons.btnSubmit.backgroundColor,
                    minimumSize: const Size(700, 60)),
                label: Text(
                  Buttons.btnSubmit.text,
                  style: const TextStyle(
                    color: Color(0xFF7F8C8D),
                    fontSize: 25,
                  ),
                ),
                icon: Image.asset(
                  Buttons.btnSubmit.icon,
                  width: 25,
                  height: 25,
                  
                ),
                onPressed: onPressed,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    // primary:Colors.blue,
                    backgroundColor: Buttons.btnTime.backgroundColor,
                    minimumSize: const Size(700, 60)),
                label: Text(
                  Buttons.btnTime.text,
                  style: const TextStyle(
                    color: Color(0xFF7F8C8D),
                    fontSize: 25,
                  ),
                ),
                icon: Image.asset(
                  Buttons.btnTime.icon,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                label:Text(
                  Buttons.btnAccount.text,
                  style: const TextStyle(
                    color: Color(0xFF7F8C8D),
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    // primary:Colors.blue,
                    backgroundColor: Buttons.btnAccount.backgroundColor,
                    minimumSize: const Size(700, 60)),
                icon: Image.asset(
                  Buttons.btnAccount.icon,
                  width: 30,
                  height: 30,
                ),
                onPressed: onPressed,
              ),
            )
          ],
        ),
      ),
    ),
  ));
}
