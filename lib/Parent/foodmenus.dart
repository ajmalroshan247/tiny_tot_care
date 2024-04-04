import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fudmenu extends StatefulWidget {
  const Fudmenu({super.key});

  @override
  State<Fudmenu> createState() => _FudmenuState();
}

class _FudmenuState extends State<Fudmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}