
import 'package:flutter/material.dart';

class AccountLoginSignup extends StatelessWidget {
  VoidCallback onTap;
  String title1;
  String title2;
   AccountLoginSignup({
    Key? key,
    required this.onTap,
    required this.title1,
    required this.title2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(title1),
           Text(title2,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
        ],),
      ),
    );
  }
}
