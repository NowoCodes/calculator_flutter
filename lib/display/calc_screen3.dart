import 'package:flutter/material.dart';

class CalcHome3 extends StatefulWidget {
  @override
  _CalcHome3State createState() => _CalcHome3State();
}

class _CalcHome3State extends State<CalcHome3> {
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
                Row(
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
                ),
                Row(
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
                ),
                Row(
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
                ),
                Row(
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
                ),
              ],
            )),
      ),
    );
  }
}

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
