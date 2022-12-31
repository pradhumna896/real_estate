import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_estate/widget/account_login_signup.dart';
import 'package:real_estate/widget/custom_textfield.dart';
import 'package:real_estate/widget/custome_button.dart';
import 'package:real_estate/widget/service/auth_service.dart';

import '../widget/appText.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Welcome To\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 34,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: "Hommie",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 34,
                              fontWeight: FontWeight.bold))
                    ])),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Create account with easy and fast methods",
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                  size: 16,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                    text: "Full Name",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: 14),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  obscureText: false,
                  controller: nameController,
                  keyBoardType: TextInputType.name,
                  hintText: "Enter name",
                ),
                const SizedBox(height: 10,),
                AppText(
                    text: "Mobile",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: 14),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  obscureText: false,
                  controller: mobileController,
                  keyBoardType: TextInputType.name,
                  hintText: "ENter Mobile",
                ),
                const SizedBox(height: 10,),
                AppText(
                    text: "Email",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: 14),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  obscureText: false,
                  controller: emailController,
                  keyBoardType: TextInputType.name,
                  hintText: "Enter Email",
                ),
                const SizedBox(height: 10,),
                AppText(
                    text: "Password",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: 14),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  obscureText: true,
                  controller: passwordController,
                  keyBoardType: TextInputType.name,
                  hintText: "Enter Password",
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: (() {
                      print("object");
                      print(nameController.text);
                      print(mobileController.text);
                      print(emailController.text);
                      print(passwordController.text);
                      AuthService().signupWithEmail(
                          context,
                          nameController.text,
                          mobileController.text,
                          emailController.text,
                          passwordController.text);
                    }),
                    child: CustomButton(
                        textSize: 16,
                        radius: 25,
                        iconColor: Colors.white,
                        title: "Sign Up",
                        borderColor: Colors.black,
                        backgroundColor: Colors.black,
                        height: 50,
                        width: double.maxFinite,
                        textColor: Colors.white,
                        isIcon: false)),
                const SizedBox(
                  height: 30,
                ),
                AccountLoginSignup(
                    onTap: () {},
                    title1: "Already have an account?",
                    title2: "Login")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
