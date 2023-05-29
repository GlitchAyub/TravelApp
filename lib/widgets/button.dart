import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  MyButton({super.key, this.isResponsive, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}
