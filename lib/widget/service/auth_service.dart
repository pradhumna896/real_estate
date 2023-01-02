import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/navbar/main_screen.dart';

import '../../screens/welcome_screen.dart';

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
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text("Create account Successfully")));
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>const MainScreen()
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
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text("Login Successfully")));
        Navigator.push(context, MaterialPageRoute(
          builder:(context)=>const MainScreen()
        ));
      }

    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(e.toString())));
      print(e.toString());

      
    }
   }

   Future<void> logout(context)async{
    try{
      _auth.signOut();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelComeScreen(),));
    }catch(e){
      print(e.toString());
    }
   }
}