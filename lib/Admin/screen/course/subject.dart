// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Subject extends StatefulWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  final _formKey = GlobalKey<FormState>();

  var courseID = "";
  var subjectCode = "";
  var subjectID = "";
  var subjectName = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final courseIDController = TextEditingController();
  final subjectCodeController = TextEditingController();
  final subjectIDController = TextEditingController();
  final subjectNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    courseIDController.dispose();
    subjectCodeController.dispose();
    subjectIDController.dispose();
    subjectNameController.dispose();
    super.dispose();
  }

  clearText() {
    courseIDController.clear();
    subjectCodeController.clear();
    subjectIDController.clear();
    subjectNameController.clear();
  }

  // Adding Student
  CollectionReference courses =
      FirebaseFirestore.instance.collection('Subject');

  Future<void> addsubject() {
    return courses
        .add({'courseID': courseID,'subjectCode': subjectCode, 'subjectID':subjectID, 'subjectName': subjectName,})
        .then((value) => print('Subject Added'))
        .catchError((error) => print('Failed to Add Subject: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Add Subject"),
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
                    labelText: 'Subject Code ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: subjectCodeController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Subject Code';
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
                    labelText: 'Subject ID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: subjectIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Subject ID';
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
                    labelText: 'Subject Name',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: subjectNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Subject Name';
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
                            subjectCode = subjectCodeController.text;
                            subjectID = subjectIDController.text;
                            subjectName = subjectNameController.text;
                            addsubject();
                            clearText();
                          });
                          print('Subject Added');
                        }
                      },
                      child: const Text(
                        'Submit',
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