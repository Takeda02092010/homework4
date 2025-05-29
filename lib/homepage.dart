import 'package:flutter/material.dart';
import 'package:homework4/favorites_page.dart';
import 'package:homework4/products_tab.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  List<Map<String, dynamic>> items = [
    {
      'icon': const Icon(Icons.home),
      'label': 'Home',
    },
    {
      'icon': const Icon(Icons.favorite),
      'label': 'Favourites',
    },
  ];
  List<Widget> pages = [
    const ProductsTab(),
  
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: items
            .map(
              (item) => BottomNavigationBarItem(
                icon: item['icon'],
                label: item['label'],
              ),
            )
            .toList(),
      ),
    );
  }
}
