import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Admin/logind.dart';

class DoctorRegistration extends StatefulWidget {
  const DoctorRegistration({Key? key}) : super(key: key);

  @override
  State<DoctorRegistration> createState() => _DoctorRegistrationState();
}

class _DoctorRegistrationState extends State<DoctorRegistration> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _qualificationController = TextEditingController();
  var _specializationController = TextEditingController();
  var _addressController = TextEditingController();
  var _officeaddressController = TextEditingController();
  var _experienceController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
          ),
        ),
        title: const Text(
          'Tiny Tots Care',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Name", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Email", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Qualification",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _qualificationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Qualification';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Qualification",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Specialization",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _specializationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Specialization';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Specialization",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Address", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Office Address",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _officeaddressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Office address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Office Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text("Experience", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _experienceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Experience';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Experince",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF5E5BFF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(12.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Logind()),
                    );
                  },
                  child: Text("SUBMIT"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
