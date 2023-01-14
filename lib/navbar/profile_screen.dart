import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: height * 0.4,
            child: Container(
                decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/home.jpg"), fit: BoxFit.cover),
            ))),
        Positioned(
          left: 0, 
          right: 0, 
          bottom: 0,
          top: height*0.35,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              color:Colors.red),
          ))
      ],
    );
  }
}
