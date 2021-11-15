import 'package:calculadora/ui/components/buttons/button-add-value.component.dart';
import 'package:calculadora/ui/components/buttons/button-clean.componet.dart';
import 'package:calculadora/ui/components/buttons/button-del-value.compoent.dart';
import 'package:calculadora/ui/components/buttons/button-oper.compoent.dart';
import 'package:flutter/cupertino.dart';

const buttonsAdd = [
  '0',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '+',
  '-',
  '*',
  '/'
];

class ButtonsWarper extends StatelessWidget {
  const ButtonsWarper({Key? key, required this.value, required this.oper})
      : super(key: key);
  final String value;
  final Function(String) oper;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ...buttonsAdd.map(
              (e) => ButtonAddValue(value: value, oper: oper, newValue: e)),
          MyButtonClean(oper: oper),
          ButtonDel(value: value, oper: oper),
          ButtonOper(value: value, oper: oper)
        ],
      ),
    );
  }
}
