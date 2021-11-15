import 'package:calculadora/ui/components/buttons/button-add-value.component.dart';
import 'package:calculadora/ui/components/buttons/button-clean.componet.dart';
import 'package:calculadora/ui/components/buttons/button-del-value.compoent.dart';
import 'package:calculadora/ui/components/buttons/button-oper.compoent.dart';
import 'package:calculadora/utils/color.utils.dart';
import 'package:flutter/cupertino.dart';

class ButtonProps {
  const ButtonProps(
      {required this.color, required this.textColor, required this.val});
  final String val;
  final Color color;
  final Color textColor;
}

const List<ButtonProps> buttonsAdd = [
  ButtonProps(
      color: ConstantColor.GREY, textColor: ConstantColor.BLACK, val: "("),
  ButtonProps(
      color: ConstantColor.GREY, textColor: ConstantColor.BLACK, val: ")"),
  ButtonProps(
      color: ConstantColor.ORANGE, textColor: ConstantColor.WHITE, val: "/"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "7"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "8"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "9"),
  ButtonProps(
      color: ConstantColor.ORANGE, textColor: ConstantColor.WHITE, val: "*"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "4"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "5"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "6"),
  ButtonProps(
      color: ConstantColor.ORANGE, textColor: ConstantColor.WHITE, val: "-"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "1"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "2"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "3"),
  ButtonProps(
      color: ConstantColor.ORANGE, textColor: ConstantColor.WHITE, val: "+"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "0"),
  ButtonProps(
      color: ConstantColor.BLACK_01, textColor: ConstantColor.WHITE, val: "."),
];

class ButtonsWarper extends StatelessWidget {
  const ButtonsWarper({Key? key, required this.value, required this.oper})
      : super(key: key);
  final String value;
  final Function(String) oper;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        children: [
          MyButtonClean(
            oper: oper,
            color: ConstantColor.GREY,
            textColor: ConstantColor.BLACK,
          ),
          ...buttonsAdd.map((e) => ButtonAddValue(
                value: value,
                oper: oper,
                newValue: e.val,
                textColor: e.textColor,
                color: e.color,
              )),
          ButtonDel(
            value: value,
            oper: oper,
            color: ConstantColor.GREY,
            textColor: ConstantColor.BLACK,
          ),
          ButtonOper(
            value: value,
            oper: oper,
            color: ConstantColor.ORANGE,
            textColor: ConstantColor.WHITE,
          )
        ],
      ),
    );
  }
}
