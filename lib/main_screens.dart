import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:star_cafe/card_screen.dart';
import 'package:star_cafe/coupon_page.dart';
import 'package:star_cafe/home_screen.dart';
import 'package:star_cafe/notification_screen.dart';

import 'package:star_cafe/profille_screen.dart';
import 'package:star_cafe/search_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          // allowImplicitScrolling: false,
          // pageSnapping: false,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: [
            HomeScreen(),
            SearchScreen(),
            CartScreen(),
            ProfileScreen(),
            // CouponPage(),
          ],
        ),
        bottomNavigationBar: GNav(
            hoverColor: Colors.grey[100]!,
            tabBackgroundColor: Colors.red,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            // tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
              _pageController.animateToPage(currentIndex,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceIn);
            }));
  }
}
