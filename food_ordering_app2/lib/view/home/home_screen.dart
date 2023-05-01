import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:food_ordering_app2/view/login&register/login_or_register_screen.dart';
import 'package:food_ordering_app2/view/home/listview_MOTD.dart';
import 'package:food_ordering_app2/view/home/listview_Breakfast.dart';
import 'package:food_ordering_app2/view/home/listview_Beverages.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
      appBar: AppBar(
        title: const Text('What Would You Like To Eat Today?'),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
      ),

      drawer: Drawer(
        child: ListView(     
          children: [
            TextButton(
              onPressed: (){
                logindata.setBool('login', true);
                Navigator.pushReplacement(
                  context, 
                  PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation)=> const LoginOrRegisterScreen(),
                        transitionsBuilder: ((context, animation, secondaryAnimation, child) {
                          var begin= const Offset(1.0, 0.0);
                          var end= Offset.zero;
                          var curve=Curves.ease;

                          var tween= Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                          return SlideTransition(
                            position: animation.drive(tween), 
                            child: child,);
                        })
                        ),
                  );
              }, 
              child: const Text('Log Out', style: TextStyle(fontSize: 20),),
              ),
          ],   
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
        child: Column(
          children: [
             const SizedBox(height: 20),
    
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Menu Of The Day:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
             const SizedBox(),
            
             MenuOfTheDayHorizontalList(),
    
             const SizedBox(height: 30),
    
             const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Breakfast:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
              BreakfastHorizontalList(),
    
              const SizedBox(height: 30),
    
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Beverages:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
    
              BeveragesHorizontalList(),
          ]
        )
        ),
    )
    );
  }
}