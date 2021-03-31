import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'display/calc_screen3.dart';

void main() {
  runApp(MyCalc());
}

class MyCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      title: 'My Calculator',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        // scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: CalcHome3(),
    );
  }
}
