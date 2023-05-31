import 'package:flutter/material.dart';
import 'package:travel_app/misc/color.dart';
import 'package:travel_app/widgets/display_text.dart';

class MyButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  MyButton({super.key, this.isResponsive, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: DisplayText(
                      text: "Book Now",
                      color: Colors.white,
                      size: 16,
                    ),
                  )
                : Container(),
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
