import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/navbar/main_screen.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
   
   Future<void> signupWithEmail(
    context,
    name,
    mobile,
    email,
    password
   )async{
    try{
      final user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(email.isNotEmpty && password.isNotEmpty){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text("Create account Successfully")));
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>MainScreen()
        ));
      }

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(e.toString())));
      print(e.toString());

      
    }
   }


   Future<void> loginWithEmail(context , email ,password)async{
      try{
      final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(email.isNotEmpty && password.isNotEmpty){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text("Login Successfully")));
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>MainScreen()
        ));
      }

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(e.toString())));
      print(e.toString());

      
    }
   }
}