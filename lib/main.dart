import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/helper/helper_function.dart';
import 'package:real_estate/helper/sessionmanager.dart';
import 'package:real_estate/navbar/main_screen.dart';
import 'package:real_estate/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      name: "real_estate",
      options: const FirebaseOptions(
          apiKey: "AIzaSyAIvz5sN4_WPXnggzmHW-ASCJhEDWEeCNA",
          authDomain: "real-estate-23352.firebaseapp.com",
          projectId: "real-estate-23352",
          storageBucket: "real-estate-23352.appspot.com",
          messagingSenderId: "17859927616",
          appId: "1:17859927616:web:65f7d633fa5f10768e89a5",
          measurementId: "G-PBEC1FQT8Y"));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool _isSignedIn = false;
@override
  void initState() {
    getUserLoggedInStatus();
    super.initState();
  }
  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isSignedIn?MainScreen():WelComeScreen(),
    );
  }
}
