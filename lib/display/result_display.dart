import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'calc_screen1.dart';

class ResultDisplay extends StatelessWidget {
  ResultDisplay({this.userInput, this.answer});

  final String userInput;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: userInput,
                  hintStyle: TextStyle(
                    fontSize: 30,
                    fontFamily: 'RobotoMono',
                  )),
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'RobotoMono',
              ),
              textAlign: TextAlign.right,
              controller: textControllerInput,
              onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
            )),
        new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: answer,
                  // fillColor: Colors.deepPurpleAccent,
                  hintStyle: TextStyle(fontFamily: 'RobotoMono')),
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.bold
                  // color: Colors.deepPurpleAccent
                  ),
              textAlign: TextAlign.right,
              controller: textControllerResult,
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
            )),
      ],
    );
  }
}

class Results extends StatelessWidget {
  Results({this.userInput, this.answer});

  final String userInput;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 50),
      color: Colors.black,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.fromLTRB(10.0, 0, 24.0, 20.0),
            alignment: Alignment.bottomRight,
            // color: Colors.red,
            child: Text(
              userInput,
              style: kInputTextStyle,
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            // color: Colors.green,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.fromLTRB(10.0, 0, 24.0, 10.0),
              child: Text(
                answer,
                style: kResultTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
