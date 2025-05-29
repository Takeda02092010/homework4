import 'package:flutter/material.dart';
import 'package:homework4/favorites_page.dart';

import 'package:homework4/widgets/home.dart';

import 'package:homework4/widgets/oreder_page.dart';

class BrewDaje1 extends StatefulWidget {
  const BrewDaje1({super.key});

  @override
  State<BrewDaje1> createState() => _BrewDaje1State();
}

class _BrewDaje1State extends State<BrewDaje1> {
  int _currentIndex = 0;

  final List<Widget> bodies = [
    // HOMEPAGE
    const HomeTab(),
    // FAVORITES PAGE

    const FavouritesPage(),

    // ORDER PAGE
    const OrderPage(),

    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201520),
      body: bodies[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 2.0)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: const Color(0xFFEFE3C8),
          unselectedItemColor: const Color(0xFFEFE3C8).withValues(alpha: .5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color(0xFF22151F),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                size: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30.0,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
