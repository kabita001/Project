
// ignore_for_file: avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddCoursePage extends StatefulWidget {
  const AddCoursePage({Key? key}) : super(key: key);

  @override
  _AddCoursePageState createState() => _AddCoursePageState();
}

class _AddCoursePageState extends State<AddCoursePage> {
  final _formKey = GlobalKey<FormState>();

  var courseID = "";
  var courseName = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final courseIDController = TextEditingController();
  final courseNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    courseIDController.dispose();
    courseNameController.dispose();
    super.dispose();
  }

  clearText() {
    courseIDController.clear();
    courseNameController.clear();
  }

  // Adding Student
  CollectionReference courses =
      FirebaseFirestore.instance.collection('courses');

  Future<void> addcourse() {
    return courses
        .add({'courseID': courseID, 'courseName': courseName,})
        .then((value) => Fluttertoast.showToast(msg: "Account created successfully :) ")
        .catchError((error) => Fluttertoast.showToast(msg:'Failed to Add Course: $error')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Add New Course"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Course ID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: courseIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter course ID';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Course Name ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: courseNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Course Name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            courseID = courseIDController.text;
                            courseName = courseNameController.text;
                            addcourse();
                            clearText();
                          });
                          Fluttertoast.showToast(msg:'Added');
                        }
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    /*ElevatedButton(
                      onPressed: () => {clearText()},
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}