import 'package:flutter/material.dart';
import 'package:food_ordering_app2/view/home/home_screen.dart';
import 'package:food_ordering_app2/view/bookmark/bookmark_screen.dart';
import 'package:food_ordering_app2/view/checkout/checkout_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _index=0;
  final screens=[
    const HomeScreen(),
    const BookmarkScreen(),
    const CheckoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value){
          setState(() {
            _index=value;
          });
        },

        items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: 'Checkout'),
            ],),
    );
  }
}