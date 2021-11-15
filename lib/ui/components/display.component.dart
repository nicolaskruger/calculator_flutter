import 'package:calculadora/utils/color.utils.dart';
import 'package:flutter/cupertino.dart';

class Display extends StatelessWidget {
  const Display({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 80, 0, 10),
      alignment: Alignment.bottomRight,
      child: Text(
        value,
        style: TextStyle(
            color: ConstantColor.WHITE, decoration: TextDecoration.none),
      ),
    );
  }
}
