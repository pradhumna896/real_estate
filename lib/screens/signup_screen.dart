import 'package:flutter/material.dart';
import 'package:real_estate/screens/login_screen.dart';
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
                buildForm(),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: (() {
                          AuthService().signupWithEmail(
                          context,
                          nameController.text.trim(),
                          mobileController.text.trim(),
                          emailController.text.trim(),
                          passwordController.text.trim());
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginScreen())));
                    },
                    title1: "Already have an account?",
                    title2: "Login")
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildForm() {
    return Column(
      children: [
        buildTextContainer(false, "Full Name", "Enter Name", nameController,
            TextInputType.name),
        const SizedBox(
          height: 20,
        ),
        buildTextContainer(false, "Mobile", "Enter Mobile", mobileController,
            TextInputType.name),
        const SizedBox(
          height: 20,
        ),
        buildTextContainer(
            false, "Email", "Enter Email", emailController, TextInputType.name),
        const SizedBox(
          height: 20,
        ),
        buildTextContainer(true, "Password", "Enter Password",
            passwordController, TextInputType.visiblePassword),
      ],
    );
  }

  buildTextContainer(bool obs, String text, String labelText,
      TextEditingController controller, TextInputType keyBoardType) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
            text: text,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            size: 14),
        const SizedBox(
          height: 5,
        ),
        CustomTextField(
          obscureText: obs,
          controller: controller,
          keyBoardType: TextInputType.name,
          hintText: labelText,
        ),
      ],
    );
  }
}
