import 'package:calculadora/ui/components/buttons/my-button.component.dart';
import 'package:flutter/cupertino.dart';

class ButtonAddValue extends StatelessWidget {
  const ButtonAddValue(
      {Key? key,
      required this.value,
      required this.oper,
      required this.newValue})
      : super(key: key);

  final String value;
  final Function(String) oper;
  final String newValue;

  void onClick() {
    oper(value + newValue);
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(onClick: onClick, val: newValue);
  }
}
