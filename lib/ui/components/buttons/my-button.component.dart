import 'package:calculadora/utils/color.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onClick,
      required this.val,
      required this.color,
      required this.textColor})
      : super(key: key);

  final Function onClick;

  final String val;

  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
          onPressed: () {
            onClick();
          },
          child: Text(
            val,
            style: TextStyle(color: textColor, fontSize: 20),
          )),
    );
  }
}
