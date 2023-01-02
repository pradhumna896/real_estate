import 'package:flutter/material.dart';
import 'package:real_estate/widget/appText.dart';
import 'package:real_estate/widget/custom_textfield.dart';
import 'package:real_estate/widget/custome_button.dart';
import 'package:real_estate/widget/service/auth_service.dart';


// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
                text: "Login with\nEmail ID",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                size: 36),
            const SizedBox(
              height: 20,
            ),
            AppText(
                text: "Please enter your Email Id correctly",
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                size: 16),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                hintText: "Enter Email",
                controller: emailController,
                keyBoardType: TextInputType.phone),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
                hintText: "Enter Password",
                controller: passwordController,
                keyBoardType: TextInputType.visiblePassword),
            const Spacer(),
            InkWell(
              onTap: () {
                AuthService().loginWithEmail(context, emailController.text  , passwordController.text);
              },
              child: CustomButton(
                  isIcon: false,
                  textSize: 16,
                  radius: 25,
                  iconColor: Colors.black,
                  title: "Login",
                  borderColor: Colors.black,
                  backgroundColor: Colors.black,
                  height: 50,
                  width: double.maxFinite,
                  textColor: Colors.white),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
