import 'package:get/get.dart';
import 'app_route.dart';
import 'package:food_odering_app/view/dashboard/dashboard_screen.dart';

class AppPage{
  static var list= [
    GetPage(name: AppRoute.dashboard, page: ()=>const DashboardScreen())

  ];
}