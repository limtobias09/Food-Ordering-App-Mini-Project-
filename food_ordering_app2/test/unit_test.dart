import 'package:flutter_test/flutter_test.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';

void main() {
  group('CartController', () {
    test('addToCart should add new item to cartItems', () {
      final controller = CartController();
      controller.addToCart('Jamur Kuping Nanas Cah Bakso', "assets/images/menuoftheday3.jpg", 2);
      expect(controller.cartItems.length, equals(1));
      expect(controller.cartItems[0].title, equals('Jamur Kuping Nanas Cah Bakso'));
      expect(controller.cartItems[0].quantity, equals(2));
    });  
  });
}