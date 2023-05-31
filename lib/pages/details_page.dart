import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/display_large_text.dart';
import 'package:travel_app/widgets/display_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStar = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('img/welcome_one.jfif'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
                color: Colors.black54,
                iconSize: 30,
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DisplayLargeText(
                            text: 'Yosemite',
                            color: Colors.black.withOpacity(0.7),
                          ),
                          DisplayLargeText(
                            text: '\$ 250',
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          DisplayText(
                            text: "USA, California",
                            size: 16,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(children: [
                        Wrap(children: [
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStar
                                    ? Colors.yellowAccent
                                    : Colors.black.withOpacity(0.5),
                              );
                            }),
                          ),
                          SizedBox(width: 4),
                          DisplayText(
                            text: "(4.0)",
                            size: 16,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ]),
                      ]),
                      SizedBox(height: 10),
                      DisplayLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.7),
                        size: 20,
                      ),
                      SizedBox(height: 5),
                      DisplayText(
                        text: "Number of People In Your Group",
                        color: Colors.black.withOpacity(0.5),
                        size: 14,
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 4, right: 4),
                              child: AppButton(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                bgColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.1),
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.1),
                                size: 60,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 25),
                      DisplayLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.7),
                        size: 20,
                      ),
                      SizedBox(height: 10),
                      DisplayText(
                        text:
                            "Yameste National Park is located n central sierra Nevada in  the US state of California. It is Loacated near the wild protected area ",
                        color: Colors.black.withOpacity(0.3),
                        size: 16,
                      )
                    ]),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButton(
                    color: Colors.black.withOpacity(0.4),
                    bgColor: Colors.white,
                    borderColor: Colors.black.withOpacity(0.4),
                    size: 60,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  MyButton(
                    isResponsive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
