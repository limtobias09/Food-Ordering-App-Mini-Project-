import 'package:food_odering_app/controller/dashboard_controller.dart';
import 'package:get/get.dart';

//DashboardBinding adalah untuk menghubungkan atau mengaitkan antara DashboarController dengan halaman DashboardScreen
//Sehingga DashboardController dapat diakses dan digunakan pada halaman DashboardScreen
//paket get dipakai untuk state management
class DashboardBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(DashboardController());
  }
}
