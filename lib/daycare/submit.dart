import 'package:flutter/material.dart';


class DcareSub extends StatefulWidget {
  const DcareSub({super.key});

  @override
  State<DcareSub> createState() => _DcareSubState();
}

class _DcareSubState extends State<DcareSub> {
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
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Staff name"
                  ),
                ),
              ),
              SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Phone"
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
                    hintText: "Qualification"
                  ),
                ),
              ),
              SizedBox(height: 39,),
              GestureDetector(
                child:
                 Container(
                  decoration: BoxDecoration(color: Color(0xFF0E6174),
                borderRadius: BorderRadius.circular(15)),
                  
                  height: 60,
                  width: 300,
                  child: Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,fontSize: 40,),)),
                ),
              ),
              SizedBox(height: 140,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.home),onPressed: (){
        
                    },
                  ),
                ),
              )
              ]
              
              ),
      ),
    );
  }
}