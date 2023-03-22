import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int hozirgiIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: hozirgiIndex,
        onTap: ((value) {
          setState(() {
            hozirgiIndex = value;
          });
          print(hozirgiIndex);

          _pageController.animateToPage(hozirgiIndex,
              duration: const Duration(milliseconds: 200), curve: Curves.linear);
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            hozirgiIndex = value;
          });
        },
        controller: _pageController,
        children: [
          Container(
            child: const Center(
              child: Text("Home Page"),
            ),
          ),
          Container(
            child: const Center(
              child: Text("Search Page"),
            ),
          ),
          Container(
            child: const Center(
              child: Text("Profile Page"),
            ),
          ),
        ],
      ),
    );
  }
}
