import 'package:flutter/material.dart';

import 'dayanastf.dart';
import 'submit.dart';
class MyStaFF extends StatefulWidget {
  const MyStaFF({super.key});

  @override
  State<MyStaFF> createState() => _MyStaFFState();
}

class _MyStaFFState extends State<MyStaFF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF750A64),
                 borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0),
                              bottomLeft: Radius.circular(55.0),
                            ),
                ),
            child: Center(
              child: Text(
                "My Staff",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 190),
          child: Text(
            "No Of Staffs",
            style: TextStyle(fontSize: 35),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
             boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
              color: const Color.fromARGB(255, 212, 207, 207), borderRadius: BorderRadius.circular(15)),
          height: 70,
          width: 350,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Dayana",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              TextButton(
   style: TextButton.styleFrom(
    shape: RoundedRectangleBorder(),
  backgroundColor: Color.fromARGB(255, 27, 172, 238),
   foregroundColor: Colors.white,
    padding: const EdgeInsets.all(6.0),
  textStyle: const TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home_day()),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        "View",
                                      ),
                                    ),
                                  ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
       Container(
          decoration: BoxDecoration(
             boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
              color: const Color.fromARGB(255, 212, 207, 207), borderRadius: BorderRadius.circular(15)),
          height: 70,
          width: 350,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Kiran",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(
                width: 145,
              ),
              TextButton(
   style: TextButton.styleFrom(
    shape: RoundedRectangleBorder(),
  backgroundColor: Color.fromARGB(255, 27, 172, 238),
   foregroundColor: Colors.white,
    padding: const EdgeInsets.all(6.0),
  textStyle: const TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => Dhome()),
                                      // );
                                    },
                                    child: Center(
                                      child: Text(
                                        "View",
                                      ),
                                    ),
                                  ),
            ],
          ),
        ),
        SizedBox(
          height: 190,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DcareSub()),
                                      );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF0E6174),
                borderRadius: BorderRadius.circular(15)),
            height: 50,
            width: 300,
            child: Center(
                child: Text(
              "Add staff",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 40,
              ),
            )),
          ),
        ),
      ]),
    );
  }
}