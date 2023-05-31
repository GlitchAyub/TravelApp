import 'package:flutter/material.dart';
import 'package:travel_app/widgets/display_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color bgColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  AppButton(
      {super.key,
      this.isIcon = false,
      this.icon,
      this.text = "HI",
      required this.color,
      required this.bgColor,
      required this.borderColor,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: isIcon == false
          ? Center(
              child: DisplayText(
              text: text!,
              color: color,
            ))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
