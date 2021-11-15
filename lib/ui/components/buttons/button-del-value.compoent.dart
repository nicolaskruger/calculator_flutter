import 'package:calculadora/ui/components/buttons/my-button.component.dart';
import 'package:flutter/cupertino.dart';

class ButtonDel extends StatelessWidget {
  const ButtonDel({Key? key, required this.value, required this.oper})
      : super(key: key);

  final String value;
  final Function(String) oper;

  void onClick() {
    oper(value.substring(0, value.length - 1));
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(onClick: onClick, val: "DEL");
  }
}
