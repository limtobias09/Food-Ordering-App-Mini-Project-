import 'package:get/get.dart';

class CartItem {
  final String title;
  final String image;
  final int quantity;

  CartItem({
    required this.title,
    required this.image,
    required this.quantity,
  });

  CartItem copyWith({String? title,String? image,int? quantity,}) {
    return CartItem(
      title: title ?? this.title,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
    );
  }
}

//CartController adalah controller untuk mengatur keranjang belanja pada aplikasi yang terdapat 2 properties
//cartItems merupakan list observables yang berisi 'Map' yang memiliki tipe data String untuk key dan dynamic untuk value
//cartItems akan digunakan untuk menampung item-item yang akan ditambahkan ke keranjang belanja
//obs adalah mixin yang digunakan untuk membuat cartItems menjadi observable, sehingga tiap kali terjadi perubahan pada cartItems akan otomatis ter-update
class CartController extends GetxController {
  final cartItems = <CartItem>[].obs;

  void removeItem(int index){
    cartItems.removeAt(index);
  }

  void addToCart(String title, String image, int quantity) {
    final index = cartItems.indexWhere(
    (item) => item.title == title && item.image == image);
    if (index != -1) {
      final item = cartItems[index];
      final updatedItem = item.copyWith(quantity: quantity);
      cartItems[index]=updatedItem;
    } else {
      cartItems.add(CartItem(title: title, image: image, quantity: quantity));
    }
  }

  void updateQuantity(int index, int quantity) {
    final item = cartItems[index];
    final updatedItem = item.copyWith(quantity: quantity);
    cartItems[index]=updatedItem;
  }
}