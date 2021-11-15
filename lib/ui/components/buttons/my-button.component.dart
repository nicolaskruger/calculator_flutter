import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onClick, required this.val})
      : super(key: key);

  final Function onClick;

  final String val;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onClick();
        },
        child: Text(val));
  }
}
