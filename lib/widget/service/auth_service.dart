import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/navbar/main_screen.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
   
   signupWithEmail(
    context,
    name,
    mobile,
    email,
    password
   )async{
    try{
      final user = _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(user!=null){
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>MainScreen()
        ));
      }

    }catch(e){
      print(e.toString());
      
      
    }
   }
}