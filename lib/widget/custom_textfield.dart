
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  bool obscureText;
  TextEditingController controller;
  TextInputType keyBoardType;
   CustomTextField({
    Key? key,
    this.obscureText = false,
    required this.hintText,
    required this.controller,
    required this.keyBoardType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Enter Name",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15))
      ),
    );
  }
}
