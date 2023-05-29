import 'package:flutter/material.dart';

class DisplayLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  DisplayLargeText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 25});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
