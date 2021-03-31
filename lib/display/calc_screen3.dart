import 'package:calculator/calc_logic.dart';
import 'package:calculator/components/calc_button.dart';
import 'package:flutter/material.dart';

class CalcHome3 extends StatefulWidget {
  @override
  _CalcHome3State createState() => _CalcHome3State();
}

class _CalcHome3State extends State<CalcHome3> {
  Logic calc = Logic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALC'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.centerRight,
                  child: Expanded(
                    child: Text(
                      calc.finalResult,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                _firstRow(),
                _secondRow(),
                _thirdRow(),
                _fourthRow(),
                _fifthRow(),
              ],
            )),
      ),
    );
  }

  Row _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalcButtons(
          btnText: 'AC',
          color: Colors.redAccent,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '+/-',
          color: Colors.grey,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '%',
          color: Colors.grey,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '/',
          color: Colors.green,
          onPressed: () {},
        ),
      ],
    );
  }

  Row _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalcButtons(
          btnText: '7',
          color: Colors.grey,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '8',
          color: Colors.grey,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '9',
          color: Colors.grey,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '*',
          color: Colors.grey,
          onPressed: () {},
        ),
      ],
    );
  }

  Row _thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalcButtons(
          btnText: '6',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("6");
            });
          },
        ),
        CalcButtons(
          btnText: '5',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("5");
            });
          },
        ),
        CalcButtons(
          btnText: '4',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("4");
            });
          },
        ),
        CalcButtons(
          btnText: '-',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.add();
            });
          },
        ),
      ],
    );
  }

  Row _fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalcButtons(
          btnText: '1',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("1");
            });
          },
        ),
        CalcButtons(
          btnText: '2',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("2");
            });
          },
        ),
        CalcButtons(
          btnText: '3',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.setNumber("3");
            });
          },
        ),
        CalcButtons(
          btnText: '+',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.add();
            });
          },
        ),
      ],
    );
  }

  Row _fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              calc.setNumber("0");
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.fromLTRB(34, 20, 118, 20),
              primary: Colors.grey[850],
              textStyle: TextStyle(fontSize: 35.0),
            ),
            child: Text('0'),
          ),
        ),
        CalcButtons(
          btnText: '.',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.decimal();
            });
          },
        ),
        CalcButtons(
          btnText: '=',
          color: Colors.grey,
          onPressed: () {
            setState(() {
              calc.execute();
            });
          },
        ),
      ],
    );
  }
}
