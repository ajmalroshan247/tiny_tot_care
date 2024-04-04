import 'package:flutter/material.dart';

import '../DomainAmin.dart';


class DayCare1 extends StatefulWidget {
  const DayCare1({super.key});

  @override
  State<DayCare1> createState() => _DayCare1State();
}

class _DayCare1State extends State<DayCare1> {
  late double height;
  late double width;
    @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  "DAY CARE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 40),
                ),
              ),
            ),
            SizedBox(height: 30),
            buildDaycareRow("DayCare 1"),
            Divider(thickness: 0.5, color: Colors.black),
            buildDaycareRow("DayCare 2"),
            Divider(thickness: 0.5, color: Colors.black),
             Padding(
                padding: const EdgeInsets.only(top: 460,left: 0),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()),
                        );
                      },
                    ),
                    Text("Home"),
          ],
        ),
      ),]
        )
      )
      
    );
  }

  Widget buildDaycareRow(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}