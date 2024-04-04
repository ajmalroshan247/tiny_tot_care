import 'package:flutter/material.dart';
import 'package:tinytots/screens/splash2.dart';


import 'Admin/adminBabysitter_edit.dart';
import 'Admin/adminDproedit.dart';
import 'Admin/adminP_edit.dart';
import 'Admin/daycare.dart';
import 'Babysitters/babysitters_registration.dart';
import 'Doctors/doctor_registration.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 50,
                  width: 80,
                  color: const Color(0xFFACE3EF),
                  child: Center(child: Text("select category",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),))),
            ),
            SizedBox(height: 25.0,),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Optional: adjust the radius as needed
                gradient: LinearGradient(colors: [
                  Color(0xFFE8C4E9),
                  Color(0xFFFFFFFF),
                ],
                  begin: Alignment.topCenter, // Gradient start position
                  end: Alignment.bottomCenter, // Gradient end position
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Doctor login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdminParent()),
                  );
                },
                child: Text(
                  "PARENT",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  // Make button background transparent
                  elevation: 0,
                  // Optional: Remove button elevation
                  padding: EdgeInsets.zero,
                  // Optional: Remove padding
                  textStyle: TextStyle(
                      color: Colors.white), // Optional: Text color
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Optional: adjust the radius as needed
                gradient: LinearGradient(colors: [
                  Color(0xFFFFFB94),
                  Color(0xFFFFFFFF),
                ],
                  begin: Alignment.topCenter, // Gradient start position
                  end: Alignment.bottomCenter, // Gradient end position
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Doctor login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdminBabysitterEdit()),
                  );
                },
                child: Text(
                  "BABYSITTERS",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  // Make button background transparent
                  elevation: 0,
                  // Optional: Remove button elevation
                  padding: EdgeInsets.zero,
                  // Optional: Remove padding
                  textStyle: TextStyle(
                      color: Colors.white), // Optional: Text color
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Optional: adjust the radius as needed
                gradient: LinearGradient(colors: [
                  Color(0xFFBFD2E4),
                  Color(0xFFFFFFFF),
                ],
                  begin: Alignment.topCenter, // Gradient start position
                  end: Alignment.bottomCenter, // Gradient end position
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdminDoctor()),
                  );
                },
                child: Text(
                  "DOCTORS",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                 
                  elevation: 0,
                  
                  padding: EdgeInsets.zero,
                  
                  textStyle: TextStyle(
                      color: Colors.white), 
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Optional: adjust the radius as needed
                gradient: LinearGradient(colors: [
                  Color(0xFF61EDDC),
                  Color(0xFFFFFFFF),
                ],
                  begin: Alignment.topRight, // Gradient start position
                  end: Alignment.bottomLeft, // Gradient end position
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Doctor login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayCare1()),
                  );
                },
                child: Text(
                  "DAY CARE",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  // Make button background transparent
                  elevation: 0,
                  // Optional: Remove button elevation
                  padding: EdgeInsets.zero,
                  // Optional: Remove padding
                  textStyle: TextStyle(
                      color: Colors.white), // Optional: Text color
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              height: 50,
              child: TextButton(
                  onPressed: () {
                  // Navigate to Doctor login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splash2()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.logout, color: Colors.black),
                  ],
                )
                ),
              ),
          ]
        ),
      ),
    );
  }
}
