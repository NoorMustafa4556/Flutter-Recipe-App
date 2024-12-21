import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_projects/Projects/Recipe%20App/Screen2.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Recipe App",
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.04, // Responsive font size based on screen width
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: (){},
                child: Icon(Icons.search)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                width: screenWidth * 0.88,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Your Recipe",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                        width: 3,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Main Card for Pizza description
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Pizza.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Classic Fajjita Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Chowmin.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Special Chowmin",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Asian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Chocolate Chip.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Chocolate Chip",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "American Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Alfrado Pasta.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Chicken Alfrado Pasta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Mango Salasa.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Mango Salasa",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Europian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Wings.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Chicken Hot Wings",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Nuggets.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Chicken Nuggets",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Pizza.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Chicken Tikka Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Pizza.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Nawabi Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Indian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Card(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5, // Elevation for shadow effect
                child: SizedBox(
                  width: 390,
                  height: 170,
                  child: Row(
                    children: [
                      // Inner Card for the Image
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/Pizza.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover, // Ensure the image fits within the circle
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              "Classic Fajjita Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            "Italian Taste",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 18.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Screen2()));
              },
              child: Container(
                  width: 270,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Go To Next Screen',
                      style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white)),
                    ),
                  )),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
