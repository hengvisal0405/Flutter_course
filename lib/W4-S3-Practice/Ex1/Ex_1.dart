import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Buttons"),
        ),
        body: Center(
          child: SelectButton(),
        ),
      ),
    ));

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  SelectButtonState createState() => SelectButtonState();
}

class SelectButtonState extends State<SelectButton> {
  bool isSelected = false;

  void selectButton() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    String textBtn;
    Color? buttonColor;
    Color textColor;

    if (isSelected) {
      textBtn = "Selected";
      buttonColor = Colors.blue[500];
      textColor = Colors.white;
    } else {
      textBtn = "Not Selected";
      buttonColor =Colors.blue[50];
      textColor = Colors.black;
    }
    return SizedBox(
      width: 400,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        onPressed: selectButton,
        child: Center(
          child: Text(
            textBtn,
            style:TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
