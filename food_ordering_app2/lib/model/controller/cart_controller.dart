import 'package:get/get.dart';

class CartController extends GetxController {
  final cartItems = <Map<String, dynamic>>[].obs;

  void addToCart(String title, String image, int quantity) {
    cartItems.add({'title': title, 'image': image, 'quantity': quantity});
  }
}