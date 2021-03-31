import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  CalcButtons({
    @required this.btnText,
    this.color,
    @required this.textColor,
    @required this.onPressed,
  });
  final String btnText;
  final Color color;
  final Color textColor;
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
          textStyle: TextStyle(color: textColor, fontSize: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          minimumSize: Size(70, 70),
        ),
      ),
    );
  }
}
