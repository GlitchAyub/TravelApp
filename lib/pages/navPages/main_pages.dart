import 'package:flutter/material.dart';
import 'package:travel_app/pages/details_page.dart';
import 'package:travel_app/pages/navPages/bar_item.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/navPages/my_page.dart';
import 'package:travel_app/pages/navPages/search_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItem(),
    SearchPages(),
    MyPage(),
  
  ];
  int click = 0;
  void onTap(int index) {
    setState(() {
      click = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[click],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: click,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.apps),
          ),
          const BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(Icons.bar_chart_sharp),
          ),
          const BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          const BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
