import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: 0.5,
         child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
          height: 300,
          color: Colors.deepOrange,)),
        ), 
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
          height: 300,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("image/home.jpg"),fit: BoxFit.cover)
          ),)),
      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width/5, size.height);
    var firstEnd = Offset(size.width/2.25, size.height-50);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx  ,firstEnd.dy);
    var secondStart = Offset(size.width-(size.width/3.24), size.height-105);
    var secondEnd = Offset(size.width, size.height-10);

    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
  
 
  
}