import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:food_ordering_app2/view/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';
import 'package:food_ordering_app2/model/controller/auth_controller.dart' as appAuth;

const users =  {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginandRegister extends StatefulWidget {
  @override
  State<LoginandRegister> createState() => _LoginandRegister();
}

class _LoginandRegister extends State<LoginandRegister> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUserSignUp(SignupData data) async{
    debugPrint('Email: ${data.name}, Password: ${data.password}');
    if(data.password!.length<6){
      return Future.value('Password must be at least 6 characters');
    }
    try{
      final list =await FirebaseAuth.instance.fetchSignInMethodsForEmail(data.name!);
      if (list.isNotEmpty){
        return 'Email is already registered, please login';
      }else{
      return Future.delayed(loginTime).then((_) async {
      appAuth.Auth authController=Get.find();
      await authController.signUp(data.name!, data.password!);
      return null;
    });
      }
    }catch (e){
      return null;
    } 
  }
  
  Future<String?> _authUserLogin(LoginData data)async{
    debugPrint('Email: ${data.name}, Password: ${data.password}');
    try {
    final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: data.name, password: data.password);
    final user = userCredential.user;

    if (user == null) {
      return 'Login failed, please try again';
    } else {
      return Future.delayed(loginTime).then((_) async {
        appAuth.Auth authController = Get.find();
        await authController.login(data.name, data.password);
        return null;
      });
    }
  } catch (e) {
    if (e is FirebaseAuthException) {
      if (e.code == 'user-not-found') {
        return 'Email is not yet registered, please sign up';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password, please try again';
      }
    }
    return Future.value(null);
  }
  }


  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return Future.value(null);
    });
  }


  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: const AssetImage('assets/icons/icons1.png'),
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}