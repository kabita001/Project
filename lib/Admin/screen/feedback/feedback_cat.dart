
// ignore_for_file: avoid_print, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedbackCategoryPage extends StatefulWidget {
  const FeedbackCategoryPage({ Key? key }) : super(key: key);

  @override
  _FeedbackCategoryPageState createState() => _FeedbackCategoryPageState();
}

class _FeedbackCategoryPageState extends State<FeedbackCategoryPage> {

  // form key
    final _formKey =  GlobalKey<FormState>();
  var comments = "";
  var complain = "";
  var suggestion = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final commentsController = TextEditingController();
  final complainController = TextEditingController();
  final suggestionController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    commentsController.dispose();
    complainController.dispose();
    suggestionController.dispose();
    super.dispose();
  }

  clearText() {
    commentsController.clear();
    complainController.clear();
    suggestionController.clear();
  }

  // Adding Feedback Category
  CollectionReference  feedbackCategory=
      FirebaseFirestore.instance.collection('feedbackCategory');

  Future<void> addfeedbackCategory() {
    return feedbackCategory
        .add({'comments': comments, 'complain': complain, 'suggestion':suggestion})
        .then((value) => print('Feedback Category were Added'))
        .catchError((error) => print('Failed to Add Feedback Category: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Feedback category"),
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
                    labelText: 'Comments ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: commentsController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your comments';
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
                    labelText: 'Please Enter your Complain',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: complainController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your Complain';
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
                    labelText: 'Please Enter your Suggestion',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: suggestionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Suggestion';
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
                            comments = commentsController.text;
                            complain = complainController.text;
                            suggestion = suggestionController.text;
                            addfeedbackCategory();
                            clearText();
                          });
                          print('Added');
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