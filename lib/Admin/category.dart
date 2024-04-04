import 'package:flutter/material.dart';


import '../Babysitters/babysitters_registration.dart';
import '../Doctors/doctor_registration.dart';
import '../Parent/parent_registration.dart';
import '../daycare/loginn.dart';
import 'login.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
                    child: Center(
                        child: Text(
                      "select category",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      8), // Optional: adjust the radius as needed
                  gradient: LinearGradient(
                    colors: [
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
                          builder: (context) => Parentregistration()),
                    );
                  },
                  child: Text(
                    "PARENT",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, 
                    elevation: 0,
                    padding: EdgeInsets.zero, 
                    textStyle:
                        TextStyle(color: Colors.white), // Optional: Text color
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      8), // Optional: adjust the radius as needed
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFFB94),
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
                          builder: (context) => Babysittersregistration()),
                    );
                  },
                  child: Text(
                    "BABYSITTERS",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, 
                    elevation: 0, 
                    padding: EdgeInsets.zero, 
                    textStyle:
                        TextStyle(color: Colors.white), 
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      8), 
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFBFD2E4),
                      Color(0xFFFFFFFF),
                    ],
                    begin: Alignment.topCenter, 
                    end: Alignment.bottomCenter, 
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorRegistration()),
                    );
                  },
                  child: Text(
                    "DOCTORS",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, 
                    elevation: 0, 
                    padding: EdgeInsets.zero, 
                    textStyle:
                        TextStyle(color: Colors.white), 
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      8), 
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF86B425),
                      Color(0xFFFFFFFF),
                    ],
                    begin: Alignment.topCenter, 
                    end: Alignment.bottomCenter, 
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Loginn()),
                    );
                  },
                  child: Text(
                    "DAYCARE",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, 
                    elevation: 0, 
                    padding: EdgeInsets.zero, 
                    textStyle:
                        TextStyle(color: Colors.white), 
                  ),
                ),
              ),
              SizedBox(
                height: 58.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Text(
                      "Childline Number: 1098",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
