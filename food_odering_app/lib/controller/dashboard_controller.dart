import 'package:get/get.dart';

//DashboardController adalah untuk mengatur dan mengendalikan keadaan (state) dari halaman DashboardScreen
//Termasuk mengatur index dari tab yang sedang dipilih pada bottom navigation bar
class DashboardController extends GetxController{
  var tabIndex=0;

  void updateIndex(int index){
    tabIndex= index;
    update();
  }
}
