// ignore_for_file: avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FeedbackType extends StatefulWidget {
  const FeedbackType({ Key? key }) : super(key: key);

  @override
  _FeedbackTypeState createState() => _FeedbackTypeState();
}

class _FeedbackTypeState extends State<FeedbackType> {
  // form key
    final _formKey =  GlobalKey<FormState>();
  var course = "";
  var faculty = "";
  var facility = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final courseController = TextEditingController();
  final facultyController = TextEditingController();
  final facilityController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    courseController.dispose();
    facultyController.dispose();
    facilityController.dispose();
    super.dispose();
  }

  clearText() {
    courseController.clear();
    facultyController.clear();
    facilityController.clear();
  }

  // Write Feedback Regarding to
  CollectionReference  feedbackType=
      FirebaseFirestore.instance.collection('feedbackType');

  Future<void> addfeedbackType() {
    return feedbackType
        .add({'comments': course, 'faculty': faculty, 'facility':facility})
        .then((value) => Fluttertoast.showToast(msg: 'Feedback Type were Added Here'))
        .catchError((error) => Fluttertoast.showToast(msg: 'Failed to Add Feedback Type: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Feedback Type"),
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
                    labelText: 'Course ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: courseController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your Text Here';
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
                    labelText: 'Faculty',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: facultyController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Detail Here';
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
                    labelText: 'Facility',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: facilityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Text Here';
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
                            course = courseController.text;
                            faculty = facultyController.text;
                            facility = facilityController.text;
                            addfeedbackType();
                            clearText();
                          });
                          Fluttertoast.showToast(msg: 'Submitted');
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