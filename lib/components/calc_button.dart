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
          textStyle: TextStyle(fontSize: 25),
          // shape: CircleBorder(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
          minimumSize: Size(70, 70),
        ),
      ),
    );
  }
}

// style: kNumberButtonTextStyle,
// constraints: BoxConstraints.tightFor(
// width: 70.0,
// height: 70.0,
// ),
// shape: CircleBorder(),
// fillColor: kButtonColor2,
// ),
// ),
