import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:food_ordering_app2/view/login&register/login_or_register_screen.dart';

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
    return Scaffold(
      appBar: AppBar(),

      drawer: Drawer(
        child: ListView(     
          children: [
            TextButton(
              onPressed: (){
                logindata.setBool('login', true);
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> const LoginOrRegisterScreen(),
                    ),
                  );
              }, 
              child: const Text('Log Out', style: TextStyle(fontSize: 20),),
              ),
          ],   
        ),
      ),
    );
  }
}