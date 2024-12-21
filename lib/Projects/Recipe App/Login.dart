import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_projects/Projects/Recipe%20App/Signup.dart';
import 'package:my_projects/Projects/Recipe%20App/WellCome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          // Red container at the top
          Container(
            color: Colors.redAccent,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.3,  // 30% of screen height
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.03),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: screenWidth * 0.15,  // Font size based on screen width
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.1, top: screenHeight * 0.01),
                          child: Text(
                            "enter your details",
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,  // Responsive font size
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // White container that fills the rest of the screen
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                  topRight: Radius.circular(120),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Image.asset(
                      'assets/images/login.png',
                      height: screenHeight * 0.3,  // Responsive image size
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      width: screenWidth * 0.9,  // 90% of screen width
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email, color: Colors.redAccent),
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 3,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                              width: 3,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      width: screenWidth * 0.9,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock, color: Colors.redAccent),
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.2),
                              width: 3,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                              width: 3,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: screenWidth * 0.045),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: screenWidth * 0.05),
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Wellcome()),
                        );
                      },
                      child: Container(
                          width: 270,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.aBeeZee(
                                  textStyle: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.white)),
                            ),
                          )),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
