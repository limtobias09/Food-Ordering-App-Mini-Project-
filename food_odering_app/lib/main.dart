import 'package:flutter/material.dart';
import 'package:food_odering_app/route/app_route.dart';
import 'package:get/get.dart';
import 'route/app_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.login_register,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const Color.fromARGB(255, 212, 130, 130), 
      ),
    );
  }
}



