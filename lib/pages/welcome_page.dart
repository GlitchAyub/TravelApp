import 'package:flutter/material.dart';
import 'package:travel_app/misc/color.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/display_large_text.dart';
import 'package:travel_app/widgets/display_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome_one.jfif',
    'welcome_two.jfif',
    'welcome_three.jfif',
  ];
  List displayingText = ["Hiking", "Mountain", "Camping"];
  List desc = [
    "Hiking is a long, vigorous walk, usually on trails or footpaths in the countryside. Walking for pleasure developed in Europe during the eighteenth century.",
    "Mountain hike gives you incredible sense of freedom along with endurance tests",
    "An outdoor activity that involves staying the night/more than one night in a protective shelter out in nature.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/" + images[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DisplayLargeText(text: "Trips"),
                      DisplayText(text: displayingText[index]),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: DisplayText(
                          text: desc[index],
                          size: 14,
                          color: AppColor.descTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MyButton(
                        width: 120,
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (indexDot) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height: index == indexDot ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDot
                                  ? AppColor.sliderNavColor
                                  : AppColor.sliderNavColor.withOpacity(0.3)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
