import 'package:flutter/cupertino.dart';

class Display extends StatelessWidget {
  const Display({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(value),
    );
  }
}
