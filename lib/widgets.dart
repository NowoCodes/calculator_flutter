import 'package:calculator/display/calc_screen1.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Widgets extends StatefulWidget {
  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget btn(btnText, Color btnColor) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          child: Text(
            btnText,
            style: kNumberButtonTextStyle,
          ),
          onPressed: () {
            setState(() {
              textControllerInput.text = textControllerInput.text + btnText;
            });
          },
          elevation: 6.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: btnColor,
        ),
      ),
    );
  }
}
