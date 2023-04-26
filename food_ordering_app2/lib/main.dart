import 'package:flutter/material.dart';
import 'route/app_route.dart';
import 'package:get/get.dart';
import 'route/app_page.dart';
import 'package:food_ordering_app2/model/controller/cart_controller.dart';
import 'package:food_ordering_app2/model/controller/bookmark_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.login_or_register,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(() {
        Get.put(CartController());
        Get.put(BookmarkController());
        }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


