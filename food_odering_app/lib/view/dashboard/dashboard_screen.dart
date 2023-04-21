import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:food_odering_app/controller/dashboard_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:food_odering_app/view/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:food_odering_app/view/login_register/login_screen.dart';


//DashboardScreen adalah untuk menggambarkan tampilan halaman utama (dashboard) dalam aplikasi
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  //'late' fungsinya untuk menunda inisialisasi sebuah variabel sampai benar-benar dibutuhkan agar hemat memori
  late SharedPreferences logindata;

  //'initState' artinya merupakan sebuah metode yang pertama kali diinisialisasi
  //Dalam kasus ini 'initial()' akan pertama kali diinisialisasi
  @override
  void initState() {
    super.initState();
    initial();
  }

  //'initial' akan menjalankan metode 'getInstance' dari 'SharedPreferences' dan mengembalikan hasil sebagai 'Future'
  //Artinya akan ditunggu sampai hasil Future diterima sebelum lanjut ke kode selanjutnya
  void initial() async{
    logindata= await SharedPreferences.getInstance();
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("What Would You Like To Eat Today?"),
          titleTextStyle: const TextStyle(
            fontSize: 20,
          ),
        ),

        drawer: Drawer(
        child: ListView(     
          children: [
            TextButton(
              onPressed: (){
                logindata.setBool('login', true);
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> const LogInScreen(),
                    ),
                  );
              }, 
              child: const Text('Log Out', style: TextStyle(fontSize: 20),),
              ),
          ],   
        ),
      ),
    
    
        body: const HomeScreen(),
    
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow:  <BoxShadow> [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              )
            ],
            color: Colors.white,
            border:  Border(
              top: BorderSide(
                color: Color(0xff040415),
                width: 0.7,
              )
            )
          ),
          child: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            padding: const EdgeInsets.symmetric(vertical: 5),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            selectedLabelStyle: const TextStyle(fontSize: 11),
            snakeViewColor: const Color(0xffff8900),
            unselectedItemColor: const Color(0xff040415),
            selectedItemColor: const Color(0xff040415),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: (value) {
             controller.updateIndex(value);
            },
  
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: 'Checkout'),
            ],
          ),
        ),
      ),
    );
  }
}
