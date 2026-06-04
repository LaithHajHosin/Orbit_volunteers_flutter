import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/Home/Home_Screen.dart';
import 'package:orbit_volunteers_flutter/Blog/Blog_Screen.dart';
import 'package:orbit_volunteers_flutter/My_Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        BlogScreen.routeName: (context) => BlogScreen(),
      },
    );
  }
}
