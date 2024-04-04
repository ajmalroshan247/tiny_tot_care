import 'package:flutter/material.dart';

class Home_day extends StatefulWidget {
  const Home_day({super.key});

  @override
  State<Home_day> createState() => _Home_dayState();
}

class _Home_dayState extends State<Home_day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF750A64),
                 borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0),
                              bottomLeft: Radius.circular(55.0),
                            ),
                ),
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Dayana",
                      style: TextStyle(color: Colors.white, fontSize: 40)
                    ),
                  
                      Text("Staff",
                      style: TextStyle(color: Colors.black, fontSize: 25),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 95),
            child: Text(
              "Number Of Student:       10",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 95),
            child: Text(
              "Duty time :    10:00 to 3:00",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 520,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}