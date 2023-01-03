
import 'package:flutter/material.dart';
import 'package:real_estate/widget/appText.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20,top: 20),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage("image/home.jpg"), fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                    child:const Icon(Icons.favorite,color: Colors.red,),
                    ),
                    ),
          const SizedBox(height: 10,),
          Row(
            children: [
              RichText(
                  text: const TextSpan(
                      text: "\$310999",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                        text: "/year",
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 18,
                            fontWeight: FontWeight.w400))
                  ])),
                  const SizedBox(width: 10,),
                  Container(
                    height: 4,
                    width: 4,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26
                    ),
                  ),
                  const SizedBox(width: 10,),
                  AppText(text: "Home", color: Colors.black26, fontWeight: FontWeight.w400, size: 18),
                  const Spacer(),
                  const Icon(Icons.star,color:Colors.orange),
                  const SizedBox(width: 5,),
                  AppText(text: "4.0", color: Colors.orange, fontWeight: FontWeight.w600, size: 18)

            ],
          ),
          const SizedBox(height: 5,),
          Row(children: [
            AppText(text: "Cassablanca Ground", color: Colors.black, fontWeight: FontWeight.w800, size: 22),
            const Spacer(),
            const Icon(Icons.bathtub_outlined,color: Colors.black54,),
            const SizedBox(width: 5,),
            AppText(text: "2", color: Colors.black26, fontWeight: FontWeight.w600, size: 20),
            const SizedBox(width: 10,),
            const Icon(Icons.bed_sharp,color: Colors.black54,),
            const SizedBox(width: 5,),
            AppText(text: "3", color: Colors.black26, fontWeight: FontWeight.w600, size: 20),
          ],),
          const SizedBox(height: 10,),
          Row(children: [
            const Icon(Icons.location_on,color: Colors.black54,),
            const SizedBox(width: 5,),

            AppText(text: "Sawojajar Street 90, Malang", color: Colors.black54, fontWeight: FontWeight.w400, size: 16) 
          ],)
        ],
      ),
    );
  }
}
