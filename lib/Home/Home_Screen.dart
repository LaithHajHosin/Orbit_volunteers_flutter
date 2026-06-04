import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/Blog/Blog_Screen.dart';
import 'package:orbit_volunteers_flutter/My_Theme.dart';

// This is the first screen people see
class HomeScreen extends StatelessWidget {
  static const String routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The logo of the project
          Center(
            child: Image.asset(
              'assets/images/photo_2026-06-04_13-00-13.jpg',
              width: 250, // made it a bit bigger
            ),
          ),
          
          SizedBox(height: 30),
          
          Text(
            'Orbit Volunteers',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: MyTheme.primaryBlue,
            ),
          ),
          
          SizedBox(height: 60),
          
          // Button to go to the blog page
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, BlogScreen.routeName);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: Text(
              'Visit Blog - المقالات',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
