import 'package:get/get.dart';

//CartController adalah controller untuk mengatur keranjang belanja pada aplikasi yang terdapat 2 properties
//cartItems merupakan list observables yang berisi 'Map' yang memiliki tipe data String untuk key dan dynamic untuk value
//cartItems akan digunakan untuk menampung item-item yang akan ditambahkan ke keranjang belanja
//obs adalah mixin yang digunakan untuk membuat cartItems menjadi observable, sehingga tiap kali terjadi perubahan pada cartItems akan otomatis ter-update
class CartController extends GetxController {
  final cartItems = <Map<String, dynamic>>[].obs;

  void removeItem(int index){
    cartItems.removeAt(index);
  }

  void addToCart(String title, String image, int quantity) {
    cartItems.add({'title': title, 'image': image, 'quantity': quantity});
  }
}