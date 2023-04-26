import 'package:flutter/material.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {

  //Deklarasi variabel cartController dengan tipe data CartController
  final CartController cartController;

  const CheckoutScreen({Key? key, required this.cartController}): super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    
    //Get.find<CartController>() digunakan untuk mendapatkan instance CartController 
    //cartController.cartItems digunakan untuk mengakses properti cartItems dari instance cartController
    final cartController= Get.find<CartController>();
    final cartItems=cartController.cartItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ready To Order?'),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
      ),

      //GetBuilder<CartController> digunakan untuk membangun UI berdasarkan state yang ada pada instance dari CartController
      body: GetBuilder<CartController>(
        init: widget.cartController,
        builder: (cartController){
          final cartItems=cartController.cartItems;
          return cartItems.isNotEmpty?
          ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (BuildContext context, int index){
            final item= cartItems[index];
            return ListTile(
              leading: Image.asset(item['image']),
              title: Text(item['title']),
              subtitle: Text("Quantity: ${item['quantity']}"),
            );
          }
          ):const Center(child: Text ('No items in cart'),);
        }
        ),

        floatingActionButton: FloatingActionButton(
        //Menggunakan pushAndRemoveUntil agar semua halaman Checkout sebelumnya akan dihapus
        onPressed:(){
          Navigator.pushAndRemoveUntil(
            context, 
            MaterialPageRoute(builder: (context)=>const DashboardScreen()),
            (Route<dynamic> route) => false
          );
        },
        child: const Icon(Icons.home_filled),
      ),
    
    );
  }
}