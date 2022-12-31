import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_estate/screens/signup_screen.dart';
import 'package:real_estate/widget/custome_button.dart';

import '../widget/account_login_signup.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
              height: size.height * 0.6,
              child: Image.asset(
                "image/home.jpg",
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: size.height * 0.5,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: size.height * 0.5,
            width: double.maxFinite,
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
              child: Column(
                children: [
                  CustomButton(
                    radius: 25,
                      iconColor: Colors.white,
                      icon: Icons.mobile_friendly,
                      textSize: 18,
                      title: "Continue with Mobile Number",
                      borderColor: Colors.black,
                      backgroundColor: Colors.black,
                      height: 50,
                      width: double.maxFinite,
                      textColor: Colors.white),
                  const SizedBox(
                    height: 20,
                  ),    
                  CustomButton(
                    radius: 25,
                      iconColor: Colors.blue,
                      icon: Icons.facebook,
                      textSize: 18,
                      title: "Login with Google",
                      borderColor: Colors.black12,
                      backgroundColor: Colors.white,
                      height: 50,
                      width: double.maxFinite,
                      textColor: Colors.black),
                  const SizedBox(
                    height: 20,
                  ),     
                  CustomButton(
                    radius: 25,
                      iconColor: Colors.blue,
                      icon: Icons.facebook,
                      textSize: 18,
                      title: "Login with Facebook",
                      borderColor: Colors.black12,
                      backgroundColor: Colors.white,
                      height: 50,
                      width: double.maxFinite,
                      textColor: Colors.black)   ,

                  const SizedBox(
                    height: 40,
                  ),
                  AccountLoginSignup(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                    },
                    title1: "Don't have an account?",
                    title2: "SignUp",
                  )

                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
