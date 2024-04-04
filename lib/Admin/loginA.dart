import 'package:flutter/material.dart';

import '../DomainAmin.dart';


class LoginA extends StatefulWidget {
  const LoginA({super.key});

  @override
  State<LoginA> createState() => _LoginAState();
}

class _LoginAState extends State<LoginA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/login.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Text("LOGIN",style: TextStyle(color: Colors.black))),
                    SizedBox(height: 50,),
                    TextFormField(decoration: InputDecoration(
                        hintText: "email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),),
                    SizedBox(height: 15,),
                    TextFormField(decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),),
                    SizedBox(height: 50,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(6.0),
                              textStyle: const TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "LOG IN",
                              ),
                            ),
                          ),

                        ],
                      ),

                    ),
                  ]
              ),
            )
          ]
      ),
    );
  }
}