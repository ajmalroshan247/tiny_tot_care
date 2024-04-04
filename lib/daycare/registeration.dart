import 'package:flutter/material.dart';

import 'loginn.dart';

class DcareRegisteration extends StatefulWidget {
  const DcareRegisteration({super.key});

  @override
  State<DcareRegisteration> createState() => _DcareRegisterationState();
}

class _DcareRegisterationState extends State<DcareRegisteration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Container(
                  child: Image.asset('assets/day.png'),
                ),
              ),
            ),
            SizedBox(height: 0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
                  child: TextField(
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      hintText: "Preschool name"
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Phone number"
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Email"
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Previous school adress"
                  ),
                ),
              ),
              SizedBox(height: 70,),
              GestureDetector(
                onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Loginn()),
                      );
                },
                child:
                 Container(
                  decoration: BoxDecoration(color: Color(0xFF0E6174),
                borderRadius: BorderRadius.circular(15)),
                  
                  height: 70,
                  width: 350,
                  child: Center(child: Text("REGISTER",style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,fontSize: 30,),)),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    Text("Already have an account?",
                    style: TextStyle(fontSize: 20,color: Colors.black),),
                    TextButton(onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Loginn()),
                      );
                    }, child: Text(" login",
                style: TextStyle(fontSize: 20,color: Colors.blue),))
                  ],
                ),
              )
          
          ],
        ),
      )
    );
  }
}