import 'package:flutter/material.dart';
import 'package:real_estate/widget/appText.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
          top: height*0.3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const  BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
              color:Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 SizedBox(height: height*0.1,),
                 AppText(text: "Name", color: Colors.black, fontWeight: FontWeight.bold, size: 28)
              ],),
          )),
        Positioned(
          top: height*0.2,
          left: (width-150)*0.5,
          right: (width-150)*0.5,
          height: height*0.2,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("image/home.jpg"),fit: BoxFit.cover)
            ),
          )),  
        Positioned(
          right: 10, 
          bottom: 10,
          left: 10,
          height: height*0.1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(12)),
          ),
          
          )
      ],
    );
  }
}
