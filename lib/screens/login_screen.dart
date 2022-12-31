import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_estate/widget/appText.dart';
import 'package:real_estate/widget/custom_textfield.dart';
import 'package:real_estate/widget/custome_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController mobileController = TextEditingController();
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
                text: "Login with\nPhone Number",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                size: 36),
            const SizedBox(
              height: 20,
            ),
            AppText(
                text: "Please enter your phone number correctly",
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                size: 16),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                hintText: "Enter Mobile",
                controller: mobileController,
                keyBoardType: TextInputType.phone),
            Spacer(),
            CustomButton(
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
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
