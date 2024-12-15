// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:news_api/view/bottom_navigation_bar_screen/bottom_navigation_bar_screen.dart';
import 'package:news_api/view/home_screen/home_screen.dart';
import 'package:news_api/view/splash_screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()

 {
  //  SharedPreferences prefs = await SharedPreferences.getInstance();
  // String? username = prefs.getString('username');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //  final String? username;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:
      SplashScreen()
      );
            
  }
}
