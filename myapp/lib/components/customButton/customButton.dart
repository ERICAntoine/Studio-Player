import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget
{
  CustomButton({@required this.title, @required this.press});
  final title, press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        press();
      },
      highlightColor: Colors.grey[900],
      shape: StadiumBorder(),
      color: Colors.grey[700],
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
          child:  Text(
            '$title',
            style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}