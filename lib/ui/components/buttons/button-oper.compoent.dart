import 'package:calculadora/ui/components/buttons/my-button.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class ButtonOper extends StatelessWidget {
  const ButtonOper({Key? key, required this.value, required this.oper})
      : super(key: key);

  final String value;
  final Function(String) oper;

  void onClick() {
    oper(value.interpret().toString());
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(onClick: onClick, val: "=");
  }
}
