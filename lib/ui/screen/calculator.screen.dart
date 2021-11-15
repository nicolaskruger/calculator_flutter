import 'package:calculadora/ui/components/buttons/buttons.component.dart';
import 'package:calculadora/ui/components/display.component.dart';
import 'package:flutter/cupertino.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String value = "";

  void oper(String newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Display(value: value),
          ButtonsWarper(value: value, oper: oper)
        ],
      ),
    );
  }
}
