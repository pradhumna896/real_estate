import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double textSize;
  final Color iconColor;
  double radius;
  double height;
  double width;
  bool isIcon;
  IconData? icon;
  CustomButton({super.key,
  required this.textSize,
  required this.radius,
  required this.iconColor,
  required this.title,
  required this.borderColor,
  required this.backgroundColor,
  required this.height,
  required this.width,
  required this.textColor,
  this.isIcon = true,
  this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor,width: 1.0),
        borderRadius: BorderRadius.circular(radius)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIcon==true?Container(
            margin: const EdgeInsets.only(right: 10),
            child: Icon(icon,color: iconColor,),
          ):Container(),
          Text(
            title,style: TextStyle(color: textColor,fontSize: textSize,),
    ),
        ],
      ));
  }
}