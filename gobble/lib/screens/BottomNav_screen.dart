import 'package:flutter/material.dart';
import 'package:gobble/screens/Nav_screen/cart_screen.dart';
import 'package:gobble/screens/Nav_screen/home_screen.dart';
import 'package:gobble/screens/Nav_screen/profile.dart';
import 'package:gobble/screens/Nav_screen/search_screen.dart';
import 'package:gobble/utils/dimesnsion.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List Pages = [
    HomeScreen(),
    SearchScreen(),
    CartSceen(),
    ProfileScreen(),
  ];
  int curIndex = 0;
  void onTap(int index) {
    setState(() {
      curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Pages[curIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHeight(30),
            ),
            topRight: Radius.circular(
              getHeight(30),
            ),
          ),
        ),
        height: getHeight(67),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorScheme.primary,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          onTap: onTap,
          currentIndex: curIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: getHeight(32),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: getHeight(32),
                ),
                label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  size: getHeight(32),
                ),
                label: ' bag'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: getHeight(32),
                ),
                label: 'person'),
          ],
        ),
      ),
    );
  }
}
