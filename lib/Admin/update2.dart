import 'package:flutter/material.dart';

import '../DomainAmin.dart';
import '../Parent/p.home.dart';
import 'a&u.dart';

class Update2 extends StatefulWidget {
  const Update2({super.key});

  @override
  State<Update2> createState() => _Update2State();
}

class _Update2State extends State<Update2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF61EDDC), Color(0xFFFFFFFF)],
                begin: Alignment.topRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              SizedBox(height: 15.0),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Singing",
                        style: TextStyle(
                          backgroundColor: Colors.white10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text("06/12/2023\n2:00pm"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 620,
              ),
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
