import 'package:flutter/material.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';
import 'package:food_ordering_app2/view/home/home_screen.dart';
import 'package:food_ordering_app2/view/bookmark/bookmark_screen.dart';
import 'package:food_ordering_app2/view/checkout/checkout_screen.dart';
import 'package:get/get.dart';

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
    CheckoutScreen(cartController: Get.find<CartController>()),
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(

      body: screens[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value){
          setState(() {
            _index=value;
            if (value==2){
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context)=>CheckoutScreen(
                    cartController: Get.find<CartController>(),
                    ),
                    settings: RouteSettings(
                      arguments: {'cart': Get.find<CartController>().cartItems}
                    )
                  )
                );
            }
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