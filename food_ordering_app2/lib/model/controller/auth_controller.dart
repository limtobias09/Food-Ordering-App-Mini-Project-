import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';


class Auth extends GetxController{
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<String?> 
    signUp(String email, String password) async{
    Uri url=Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyC33QZ92fYwiDGK-yvx3z83PmUdhbGnGhw");

  var response= await http.post(url, body: json.encode({
      "email": email,
      "password": password,
      "returnSecureToken": true,
    }
    ));

    print(json.decode(response.body));
    }
  
    login(String email, String password) async{
    Uri url=Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyC33QZ92fYwiDGK-yvx3z83PmUdhbGnGhw");

    var response= await http.post(url, body: json.encode({
      "email": email,
      "password": password,
      "returnSecureToken": true,
    }
    ));

    print(json.decode(response.body));
  }
  
}