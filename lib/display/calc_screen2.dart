import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../constants.dart';
import 'result_display.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcHome2 extends StatefulWidget {
  @override
  _CalcHome2State createState() => _CalcHome2State();
}

class _CalcHome2State extends State<CalcHome2> {
  var userInput = '';
  var answer = '';

  // Button Array
  final List<String> buttons = [
    'AC',
    '↺',
    '%',
    '÷',
    '𝟳',
    '𝟴',
    '𝟗',
    '×',
    '𝟰',
    '𝟱',
    '𝟲',
    '−',
    '𝟭',
    '𝟮',
    '𝟯',
    '+',
    '+/-',
    '𝟬',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Results(
                userInput: userInput,
                answer: answer,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      // Clear Button
                      if (index == 0) {
                        return NumberButton(
                          onTap: () {
                            setState(() {
                              userInput = '';
                              answer = '0';
                            });
                          },
                          buttonTitle: buttons[index],
                          color: Colors.teal,
                        );
                      }

                      // DEL Button
                      else if (index == 1) {
                        return NumberButton(
                          onTap: () {
                            setState(() {
                              userInput = userInput.length > 0
                                  ? userInput.substring(0, userInput.length - 1)
                                  : '';
                            });
                          },
                          buttonTitle: buttons[index],
                          color: Colors.teal,
                        );
                      }

                      // % Button
                      else if (index == 2) {
                        return NumberButton(
                          onTap: () {
                            setState(() {
                              userInput += buttons[index];
                            });
                          },
                          buttonTitle: buttons[index],
                          color: kOperandColor,
                        );
                      }

                      // +/- Button
                      else if (index == 16) {
                        return NumberButton(
                          buttonTitle: buttons[index],
                          color: kOperandColor,
                        );
                      }

                      // Equal To Button
                      else if (index == 19) {
                        return NumberButton(
                          onTap: () {
                            Parser p = new Parser();
                            ContextModel cm = new ContextModel();
                            Expression exp = p.parse(userInput);
                            setState(() {
                              // equalPressed();
                              answer = exp
                                  .evaluate(EvaluationType.REAL, cm)
                                  .toString();
                            });
                          },
                          buttonTitle: buttons[index],
                          color: kOperandColor,
                        );
                      }

                      // Other Buttons
                      else {
                        return NumberButton(
                          onTap: () {
                            setState(() {
                              userInput += buttons[index];
                            });
                          },
                          buttonTitle: buttons[index],
                          color: isOperator(buttons[index])
                              ? kOperandColor
                              : kNumberButtonColor,
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '÷' || x == '×' || x == '−' || x == '+') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('×', '*');

    Parser p = new Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = new ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
