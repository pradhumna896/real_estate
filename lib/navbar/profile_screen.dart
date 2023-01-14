import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
           const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("image/home.jpg"),
            
          ),
          Container(
            padding: const EdgeInsets.only(left: 90,right:20,top: 20),
            child: Column(children: [
              Row(
                
                children: [
                Text("name:",),
                const SizedBox(width: 10,),
                Text("john"),
              ],)
            ],),
          )
        ],
      ),
    );
  }
}