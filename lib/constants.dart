import 'package:flutter/material.dart';

const kNumberButtonColor = Colors.orangeAccent;
const kOperandColor = Colors.red;
const kButtonColor2 = Colors.white;

const kNumberButtonTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const kInputTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 34.0,
);

const kResultTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 60,
);

const kButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
    bottomRight: Radius.circular(40),
    bottomLeft: Radius.circular(40),
  ),
);
