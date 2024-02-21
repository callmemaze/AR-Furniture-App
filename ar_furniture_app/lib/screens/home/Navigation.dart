import 'package:ar_furniture_app/screens/pages/cart.dart';
import 'package:ar_furniture_app/screens/pages/favorite.dart';
import 'package:ar_furniture_app/screens/pages/home.dart';
import 'package:ar_furniture_app/screens/pages/profile.dart';
import 'package:ar_furniture_app/screens/pages/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreen();
}

class _NavigationScreen extends State<NavigationScreen> {
  final pages = const [
    HomeScreen(),
    FavoriteScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30,
      color: Colors.grey.shade400,
    ),
    Icon(
      Icons.favorite,
      size: 30,
      color: Colors.grey.shade400,
    ),
    Icon(
      Icons.search,
      size: 35,
      color: Colors.grey.shade400,
    ),
    Icon(
      Icons.shopping_cart,
      size: 30,
      color: Colors.grey.shade400,
    ),
    Icon(
      Icons.person,
      size: 30,
      color: Colors.grey.shade400,
    )
  ];
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        items: items,
        index: index,
        height: 75,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 600),
      ),
      body: pages[index],
    );
  }
}
