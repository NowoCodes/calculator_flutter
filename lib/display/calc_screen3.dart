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
                      'Wahala',
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
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '+/-',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '%',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '/',
          color: Colors.green,
          textColor: Colors.black87,
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
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '8',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '9',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '*',
          color: Colors.grey,
          textColor: Colors.black87,
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
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '5',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '4',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '-',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
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
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '2',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '3',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
        CalcButtons(
          btnText: '+',
          color: Colors.grey,
          textColor: Colors.black87,
          onPressed: () {},
        ),
      ],
    );
  }
}
