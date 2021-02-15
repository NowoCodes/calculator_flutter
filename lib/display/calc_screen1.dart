import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../components/buttons.dart';
import '../constants.dart';
import 'result_display.dart';
import '../widgets.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

final textControllerInput = TextEditingController();
final textControllerResult = TextEditingController();

var userInput = '';
var answer = '';

class CalcHome1 extends StatefulWidget {
  @override
  _CalcHome1State createState() => _CalcHome1State();
}

class _CalcHome1State extends State<CalcHome1> {
  @override
  void initState() {
    super.initState();
    textControllerInput.addListener(() {});
    textControllerResult.addListener(() {});
  }

  // @override
  // void dispose() {
  //   textControllerInput.dispose();
  //   textControllerResult.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ResultDisplay(
                userInput: userInput,
                answer: answer,
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  // btn('AC'),
                  btnAC('AC'),
                  // btn('↺'),
                  btnClear(),
                  btn('%'),
                  btn('÷'),
                ],
              ),
              Row(
                children: [
                  btn('𝟳'),
                  btn('𝟴'),
                  btn('𝟗'),
                  // btn('×'),
                  btn('*'),
                ],
              ),
              Row(
                children: [
                  btn('𝟰'),
                  btn('𝟱'),
                  btn('𝟲'),
                  btn('−'),
                ],
              ),
              Row(
                children: [
                  btn('𝟭'),
                  btn('𝟮'),
                  btn('𝟯'),
                  btn('+'),
                ],
              ),
              Row(
                children: [
                  btn('+/-'),
                  btn('𝟬'),
                  btn('.'),
                  // btn('='),
                  // btnEqual('=')
                  btnEqual('='),
                ],
              ),
              FlatButton(
                child: Container(
                  child: Text('Second Page'),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widgets
  Widget btn(String btnText) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          child: Text(
            btnText.toString(),
            style: kNumberButtonTextStyle,
          ),
          onPressed: () {
            setState(() {
              textControllerInput.text = textControllerInput.text + btnText;
            });
          },
          elevation: 3.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: kButtonColor2,
        ),
      ),
    );
  }

  Widget btnClear() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          child: Icon(
            Icons.backspace,
          ),
          onPressed: () {
            textControllerInput.text = (textControllerInput.text.length > 0)
                ? (textControllerInput.text
                    .substring(0, textControllerInput.text.length - 1))
                : "";
          },
          elevation: 6.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: kButtonColor2,
        ),
      ),
    );
  }

  Widget btnAC(btnText) {
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
              textControllerInput.text = "";
              textControllerResult.text = "";
            });
          },
          elevation: 6.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: kButtonColor2,
        ),
      ),
    );
  }

//   Widget btnEqual(btnText) {
//     return GradientButton(
//       child: Text(
//         btnText,
//         style: TextStyle(fontSize: 35.0),
//       ),
//       increaseWidthBy: 40.0,
//       increaseHeightBy: 10.0,
//       callback: () {
//         //Calculate everything here
//         // Parse expression:
//         Parser p = new Parser();
//         // Bind variables:
//         ContextModel cm = new ContextModel();
//         Expression exp = p.parse(textControllerInput.text);
//         setState(() {
//           textControllerResult.text =
//               exp.evaluate(EvaluationType.REAL, cm).toString();
//         });
//       },
//       gradient: Gradients.jShine,
//     );
//   }

  Widget btnEqual(btnText) {
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
              Parser p = new Parser();
              ContextModel cm = new ContextModel();
              Expression exp = p.parse(textControllerInput.text);
              textControllerResult.text =
                  exp.evaluate(EvaluationType.REAL, cm).toString();
            });
          },
          elevation: 6.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: kButtonColor2,
        ),
      ),
    );
  }
}
