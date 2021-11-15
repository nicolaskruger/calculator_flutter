import 'package:calculadora/ui/components/buttons/my-button.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class ButtonOper extends StatelessWidget {
  const ButtonOper(
      {Key? key,
      required this.value,
      required this.oper,
      required this.color,
      required this.textColor})
      : super(key: key);

  final String value;
  final Function(String) oper;
  final Color color;
  final Color textColor;

  void onClick() {
    oper(value.interpret().toString());
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(
      onClick: onClick,
      val: "=",
      color: color,
      textColor: textColor,
    );
  }
}
