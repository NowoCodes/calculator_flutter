import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  CalcButtons({
    @required this.btnText,
    @required this.color,
    @required this.onPressed,
  });
  final String btnText;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(btnText),
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 6.0,
          textStyle: TextStyle(fontSize: 25.0),
          shape: kButtonShape,
          minimumSize: Size(70.0, 70.0),
        ),
      ),
    );
  }
}
