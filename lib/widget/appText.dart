import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight fontWeight;

   AppText({super.key,
   required this.text,
   required this.color,
   required this.fontWeight,
   required this.size
   });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(color: color,fontSize: size,fontWeight: fontWeight),
    );
  }
}