import 'package:food_odering_app/view/dashboard/dashboard_binding.dart';
import 'package:get/get.dart';
import 'app_route.dart';
import 'package:food_odering_app/view/dashboard/dashboard_screen.dart';

//AppPage digunakan untuk mengatur halaman atau rute yang terhubung dengan package get
//AppPage memiliki properti list yang berisi daftar GetPage yang mewakili sebuah halaman dalam aplikasi 
class AppPage{
  static var list= [
    GetPage(
      name: AppRoute.dashboard, 
      page: ()=>const DashboardScreen(),
      binding: DashboardBinding()
      )

  ];
}
