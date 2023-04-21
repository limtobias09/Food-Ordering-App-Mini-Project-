import'package:flutter/material.dart';
import 'package:food_ordering_app2/view/login&register/login.dart';
import 'package:food_ordering_app2/view/login&register/register.dart';

class LoginOrRegisterScreen extends StatelessWidget {
  const LoginOrRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Or Register?'),
        backgroundColor: const Color.fromARGB(255, 154, 41, 33),
      ),

      body: Container(
        child: Center(
         child: Column(
          children: [

            const SizedBox(height: 10,),

             SizedBox(
              height: 150,
              child: Image.asset('assets/icons/icons1.png')
              ),

              const SizedBox(height: 150),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>const LogInScreen()),
          );
              }, 
              child: const Text('Login'),
              ),

              const SizedBox(height: 10,),

              const Text('OR', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const RegisterScreen()),
                );
              }, 
              child: const Text('Register'),
              ),
          ],
         ),
        ),
    )
    );
  }
}