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

  //_index digunakan untuk menentukan index halaman yang ditampilkan pada bottom navigation bar
  //Get.find<CartController>() digunakan untuk Checkout screen mengambil cartController
  int _index=0;
  final screens=[
    const HomeScreen(),
    const BookmarkScreen(),
    CheckoutScreen(cartController: Get.find<CartController>()),
  ];

  @override
  Widget build(BuildContext context) {

    //Get.put(CartController()) digunakan untuk memasukkan CartController ke dalam memory sehingga dapat diakses dengan mudah di berbagai widget tanpa perlu membuat instance baru tiap kali butuh akses ke controller 
    Get.put(CartController());
    return Scaffold(

      body: screens[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value){
          setState(() {

            //value merujuk pada index item yang dipilih pada bottom navigation bar
            //nilai value akan berubah sesuai dengan index item yang dipilih
            _index=value;

            //value==2 artinya jika user men-tap bottom navigation bar dengan index ke-2 yaitu tombol checkout
            if (value==2){
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context)=>CheckoutScreen(

                    //cartController diinisialisasi menggunakan Get.find<CartController>() yang akan mencari instance CartController yang sebelumnya telah diinisialisasi menggunakan Get.put(CartController())
                    cartController: Get.find<CartController>(),
                    ),

                    //RouteSettings diinisialisasi dengan parameter arguments yang berisi daftar item yang telah dipilih di keranjang belanja
                    //Objek ini akan digunakan untuk meneruskan data ke CheckoutScreen saat layar CheckoutScreen ditampilkan
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