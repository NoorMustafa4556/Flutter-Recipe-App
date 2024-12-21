import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override

  Widget build(BuildContext context) {
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
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:   Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              ListTile(
                title: Text("Noor Mustafa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 30,

                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
              Divider(
                thickness: 0.015,
              ),

              ListTile(

                onTap: (){},
                title: Text("Create a new Profile or page",style: TextStyle(fontSize: 20),),
                leading: CircleAvatar(
                  child: Icon(Icons.add,size: 30,),
                  radius: 30,
                ),

              ),
              SizedBox(height: 30,),
              Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.radio,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Feeds"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.access_alarm,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Memories"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save_alt,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Saved"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.group,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Groups"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.group,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Friends(6 online)"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event,size: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Events"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 370,
                  child: Center(child: Text("See more")),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),

              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Help & support"),
                leading: CircleAvatar(
                  radius: 30,
                  child: Container(
                    child: Icon(Icons.question_mark),
                  ),
                ),

              ),
              Divider(
                thickness: 0.015,
              ),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Settings & privacy"),
                leading: CircleAvatar(
                  radius: 30,
                  child: Container(
                    child: Icon(Icons.settings),
                  ),
                ),

              ),
              Divider(
                thickness: 0.015,
              ),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Also From Meta"),
                leading: CircleAvatar(
                  radius: 30,
                  child: Container(
                    child: Icon(Icons.dashboard),
                  ),
                ),

              ),
              Divider(
                thickness: 0.015,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 370,
                  child: Center(child: Text("Log out")),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      )
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
