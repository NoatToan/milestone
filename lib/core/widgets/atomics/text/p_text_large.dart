import 'package:flutter/material.dart';

class PTextLarge extends StatelessWidget {
  const PTextLarge(
    this.text, {
    Key? key,
    this.size = 30,
    this.color = Colors.black,
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
