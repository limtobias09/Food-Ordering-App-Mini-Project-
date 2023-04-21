import 'package:get/get.dart';
import 'app_route.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:food_ordering_app2/view/login&register/login_register.dart';

class AppPage{
  static var list=[
    GetPage(
      name: AppRoute.login_register, 
      page: ()=>const LogInScreen(),
      ),
      
    GetPage(
      name: AppRoute.dashboard, 
      page: ()=>const DashboardScreen(),
      ),
  ];
}