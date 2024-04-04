import 'package:flutter/material.dart';

import 'home_day.dart';
import 'registeration.dart';


class Loginn extends StatefulWidget {
  const Loginn({super.key});
  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 25),
              child: Container(
                child: Image.asset('assets/TinyTots Care.png'),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontFamily: 'Irish Grover',
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  height: 1.209,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username"
                ),
              ),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            GestureDetector(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MySchool()),
                    );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E6174),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: 250,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
             GestureDetector(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DcareRegisteration()),
                    );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E6174),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: 250,
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
