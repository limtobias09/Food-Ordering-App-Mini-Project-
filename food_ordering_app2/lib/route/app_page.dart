import 'package:get/get.dart';
import 'app_route.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:food_ordering_app2/view/login&register/login_or_register_screen.dart';
import 'package:food_ordering_app2/view/description_save_order/description_screen.dart';
import 'package:food_ordering_app2/view/checkout/checkout_screen.dart';
import 'package:food_ordering_app2/view/bookmark/bookmark_screen.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';
import 'package:food_ordering_app2/model/controller/bookmark_controller.dart';


class AppPage{
  static var list=[
    GetPage(
      name: AppRoute.login_or_register, 
      page: ()=>const LoginOrRegisterScreen(),
      ),
      
    GetPage(
      name: AppRoute.dashboard, 
      page: ()=>const DashboardScreen(),
      ),

    GetPage(
      name: AppRoute.description_screen, 
      page: ()=>const DescriptionScreen(),
      ),

    GetPage(
      name: AppRoute.checkout_screen, 
      page: ()=>CheckoutScreen(cartController: Get.find<CartController>()),
      ),

      GetPage(
      name: AppRoute.bookmark_screen, 
      page: ()=>BookmarkScreen(bookmarkController: Get.find<BookmarkController>(),),
      ),
  ];
}