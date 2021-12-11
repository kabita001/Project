// ignore_for_file: avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StudentCourse extends StatefulWidget {
  const StudentCourse({ Key? key }) : super(key: key);

  @override
  _StudentCourseState createState() => _StudentCourseState();
}

class _StudentCourseState extends State<StudentCourse> {

  // form key
    final _formKey = GlobalKey<FormState>();

  var courseID = "";
  var studentCourseID = "";
  var userID = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final courseIDController = TextEditingController();
  final studentCourseIDController = TextEditingController();
  final userIDController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    courseIDController.dispose();
    studentCourseIDController.dispose();
    userIDController.dispose();
    super.dispose();
  }

  clearText() {
    courseIDController.clear();
    studentCourseIDController.clear();
    userIDController.clear();
  }

  // Adding Student
  CollectionReference studentCourse =
      FirebaseFirestore.instance.collection('studentCourses');

  Future<void> addstudentCourse() {
    return studentCourse
        .add({'courseID': courseID, 'studentCourseID': studentCourseID, 'userID':userID})
        .then((value) => Fluttertoast.showToast(msg: 'Student Course were Added'))
        .catchError((error) => Fluttertoast.showToast(msg: 'Failed to Add Course to Student: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Add Student Course"),
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
                    labelText: 'Student CourseID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studentCourseIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Student CourseID';
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
                    labelText: 'User ID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: userIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter User ID';
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
                            studentCourseID = studentCourseIDController.text;
                            userID = userIDController.text;
                            addstudentCourse();
                            clearText();
                          });
                          Fluttertoast.showToast(msg: 'Added');
                        }
                      },
                      child: const Text(
                        'submit',
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