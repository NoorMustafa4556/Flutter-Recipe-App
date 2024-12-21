import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_projects/Projects/Recipe%20App/Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(120),
                    bottomLeft: Radius.circular(120),
                  )),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38.0),
                    child: Text(
                      "feel free to sign up",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/signup.png',
              height: 250,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Adjusted Email TextField
                SizedBox(
                  width: screenWidth * 0.9, // 90% of screen width
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.email,
                        color: Colors.redAccent,
                      ),
                      hintText: "Email ",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                            width: 3,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Adjusted Password TextField
                SizedBox(
                  width: screenWidth * 0.9, // 90% of screen width
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Colors.redAccent,
                      ),
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                            width: 3,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 3,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "already have an account?",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Login()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 18.0),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Container(
                      width: 270,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.aBeeZee(
                              textStyle: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.white)),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
