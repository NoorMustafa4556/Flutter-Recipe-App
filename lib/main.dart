import 'package:flutter/material.dart';
import 'package:my_projects/Projects/Recipe%20App/Login.dart';
import 'package:my_projects/Projects/Recipe%20App/Signup.dart';
import 'package:my_projects/Projects/Recipe%20App/WellCome.dart';

import 'Projects/Recipe App/RecipeSplash.dart';

void main() {
  runApp(const MyApp()); // Starting the app with MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Recipesplash(), // The home screen is set to Buttons
    );
  }
}