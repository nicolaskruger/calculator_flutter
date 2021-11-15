import 'package:calculadora/ui/components/buttons/my-button.component.dart';
import 'package:flutter/cupertino.dart';

class MyButtonClean extends StatelessWidget {
  const MyButtonClean({Key? key, required this.oper}) : super(key: key);

  final Function(String) oper;

  void onClick() {
    oper("");
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(onClick: onClick, val: "AC");
  }
}
