import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_projects/Projects/Recipe%20App/Signup.dart';

class Recipesplash extends StatefulWidget {
  const Recipesplash({super.key});

  @override
  State<Recipesplash> createState() => _RecipesplashState();
}

class _RecipesplashState extends State<Recipesplash> {
  @override
  void initState() {
    super.initState();
    // Start a timer of 5 seconds, then navigate to the Chats screen.
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Signup()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body:   Expanded(
        child: Container(
          child: Center(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Splash screen.png', // Add your WhatsApp icon here

                ),

                Center(
                  child: Image.asset(
                    'assets/images/recipe2.png', // Add your WhatsApp icon here

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
