// import 'package:flutter/material.dart';
// import 'package:travel_app/widgets/display_text.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // menu text
//           Container(
//             padding: const EdgeInsets.only(top: 70, left: 20),
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.menu,
//                   size: 30,
//                   color: Colors.black54,
//                 ),
//                 Expanded(child: Container()),
//                 Container(
//                   margin: const EdgeInsets.only(right: 20),
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 40),
//           // discover text
//           Container(
//             margin: const EdgeInsets.only(left: 20),
//             child: DisplayText(text: 'Display'),
//           ),
//           SizedBox(height: 30),
//           // tabbar
//           Container(
//             child: TabBar(
//               labelPadding: EdgeInsets.only(left: 0, right: 0),
//               controller: _tabController,
//               labelColor: Colors.black,
//               unselectedLabelColor: Colors.grey,
//               isScrollable: true,
//               tabs: [
//                 Tab(text: "Places"),
//                 Tab(text: "Inspiration"),
//                 Tab(text: "Emotions"),
//               ],
//             ),
//           ),
//           Container(
//             width: 300,
//             height: double.maxFinite,
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Text('hi'),
//                 Text("bye"),
//                 Text("tata"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:travel_app/misc/color.dart';
import 'package:travel_app/widgets/display_large_text.dart';
import 'package:travel_app/widgets/display_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  var images = {
    "balloning.png": "Ballooning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkeling"
  };

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu text
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // discover text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: DisplayText(text: 'Display'),
            ),
            SizedBox(height: 30),
            // tabbar
            Container(
              width: double.infinity,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(
                  color: AppColor.sliderNavColor,
                  radius: 4,
                ),
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              height: 300, // Adjust the height as needed
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('img/mountain.jpeg'),
                          ),
                        ),
                      );
                    },
                  ),
                  Text("bye"),
                  Text("tata"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DisplayLargeText(
                    text: "Explore More",
                    size: 22,
                  ),
                  DisplayText(
                    text: "see all",
                    color: Colors.grey,
                    size: 16,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(right: 40),
              child: Container(
                height: 120,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 4, // Provide the number of items
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                  "img/${images.keys.elementAt(index)}"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: DisplayText(
                            text: images.values.elementAt(index),
                            size: 12,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
