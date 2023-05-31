import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

 DisplayText({super.key, required this.text,  this.color = Colors.black87,this.size=12});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,

      ),
    );
  }
}
