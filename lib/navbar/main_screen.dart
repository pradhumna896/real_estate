import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_estate/navbar/favrote_screen.dart';
import 'package:real_estate/navbar/home_screen.dart';
import 'package:real_estate/navbar/profile_screen.dart';
import 'package:real_estate/navbar/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    HomePage(),
    FavoriteScreen(),
    DiscoverScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;
  onTap(index){
     setState(() {
       currentIndex = index;
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        items:const  [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_outlined)),
        BottomNavigationBarItem(label: "Favorite", icon: Icon(Icons.favorite_outline)),
        BottomNavigationBarItem(label: "Discover", icon: Icon(Icons.search_outlined)),
        BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person_outline_outlined))
      ]),
    );
  }
}