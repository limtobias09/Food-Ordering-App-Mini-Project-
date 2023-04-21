import 'package:get/get.dart';
import 'app_route.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:food_ordering_app2/view/login&register/login_or_register_screen.dart';


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
  ];
}