import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';

class NumberButton extends StatelessWidget {
  NumberButton({this.onTap, this.buttonTitle, this.color});

  final String buttonTitle;
  final Function onTap;
  final color;

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: onTap,
    //   child: Padding(
    //     padding: const EdgeInsets.all(0.2),
    //     child: ClipRRect(
    //       // borderRadius: BorderRadius.circular(25.0),
    //       child: Container(
    //         color: kNumberButtonColor,
    //         child: Center(
    //           child: Text(
    //             // constraints: BoxConstraints.tightFor(width: 70, height: 70),
    //             buttonTitle,
    //             style: kNumberButtonTextStyle,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: RawMaterialButton(
          child: Text(
            buttonTitle,
            style: kNumberButtonTextStyle,
          ),
          onPressed: onTap,
          elevation: 6.0,
          constraints: BoxConstraints.tightFor(
            width: 70.0,
            height: 70.0,
          ),
          shape: CircleBorder(),
          fillColor: color,
        ),
      ),
    );
  }
}
