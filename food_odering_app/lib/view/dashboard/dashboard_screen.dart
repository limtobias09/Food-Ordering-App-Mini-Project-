import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:food_odering_app/controller/dashboard_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Mother's Recipe"),
          titleTextStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
    
    
        body: Container(),
    
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow:  <BoxShadow> [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              )
            ],
            color: Colors.white,
            border:  Border(
              top: BorderSide(
                color: Color(0xff040415),
                width: 0.7,
              )
            )
          ),
          child: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            padding: const EdgeInsets.symmetric(vertical: 5),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            selectedLabelStyle: const TextStyle(fontSize: 11),
            snakeViewColor: const Color(0xffff8900),
            unselectedItemColor: const Color(0xff040415),
            selectedItemColor: const Color(0xff040415),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: (value) {
             
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: 'Checkout'),
            ],
          ),
        ),
      ),
    );
  }
}