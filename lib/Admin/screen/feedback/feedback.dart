

// ignore_for_file: avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ug_project/Admin/screen/upload.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);


  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {

  //dropdown
  final items = ['Course', 'Faculty', 'Facility'];
  final category = ['Comments', 'Complain', 'Suggestion'];
  String? value;

  // form key
  final _formKey =  GlobalKey<FormState>();

  var feedbackID = "";
  var userID = "";
  var courseID = "";
  var subjectID = "";
  var feedbackType = "";
  var feedbackCategory = "";
  var audioFile = "";
  var videoFile = "";
  var imageFile = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final feedbackIDController = TextEditingController();
  final userIDController = TextEditingController();
  final courseIDController = TextEditingController();
  final subjectIDController = TextEditingController();
  final feedbackTypeController = TextEditingController();
  final feedbackCategoryController = TextEditingController();
  final audioFileController = TextEditingController();
  final videoFileController = TextEditingController();
  final imageFileController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    feedbackIDController.dispose();
    userIDController.dispose();
    courseIDController.dispose();
    subjectIDController.dispose();
    feedbackTypeController.dispose();
    feedbackCategoryController.dispose();
    audioFileController.dispose();
    videoFileController.dispose();
    imageFileController.dispose();
    super.dispose();
  }

  clearText() {
    feedbackIDController.clear();
    userIDController.clear();
    courseIDController.clear();
    subjectIDController.clear();
    feedbackTypeController.clear();
    feedbackCategoryController.clear();
    audioFileController.clear();
    videoFileController.clear();
    imageFileController.clear();
  }

  //final List<String> feedbackType = ['Course', 'Faculty', 'Facility'];
  //final List<String> feedbackCategory = ['Comments', 'Complain', 'Suggestion'];
  // Adding Feedback
  CollectionReference feedback =
      FirebaseFirestore.instance.collection('feedback');

  Future<void> addfeedback() {
    return feedback
        .add({'feedbackID': feedbackID, 'userID': userID, 'courseID': courseID, 'subjectID': subjectID, 'feedbackType': feedbackType, 'feedbackCategory': feedbackCategory, 'audioFile': audioFile, 'videoFile': videoFile, 'imageFile': imageFile})
        .then((value) => Fluttertoast.showToast(msg: 'Feedback were Submitted'))
        .catchError((error) => Fluttertoast.showToast(msg: 'Failed to submit Feedback: $error'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: const Text("Submit Feedback"),
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
                    labelText: 'Feedback ID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: feedbackIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Feedback ID';
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
                      return 'Enter User ID';
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
                    labelText: 'Subject ID ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: subjectIDController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Subject ID';
                    }
                    return null;
                  },
                ),
              ),
              //feedback category
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Feedback Category ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: feedbackCategoryController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Select Feedback Category';
                    }
                    return null;
                  },
                ),
              ),
              //dropdown
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value,
                    isExpanded: true,
                    items: items.map(buildMenuItem).toList(),
                    hint: const Text('Feedback Type'),
                    onChanged: (value)=> setState(() => this.value = value,
                  )),
                ),
              ),
              //audio file
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Audio File',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: audioFileController,
                  validator: (value) {
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Image File',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    /*prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: IconButton(
                          icon: Icon(Icons.camera_alt_outlined),
                          color: Colors.blueAccent, 
                          onPressed: () { 
                           }, 
                        ),
                      ),*/
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: imageFileController,
                  validator: (value) {
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
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            feedbackID = feedbackIDController.text;
                            userID = userIDController.text;
                            courseID = courseIDController.text;
                            subjectID = subjectIDController.text;
                            feedbackType = feedbackTypeController.text;
                            feedbackCategory = feedbackCategoryController.text;
                            audioFile = audioFileController.text;
                            videoFile = videoFileController.text;
                            imageFile = imageFileController.text;
                            addfeedback();
                          });
                          Fluttertoast.showToast(msg: 'Added');
                        }
                      },
                      child: const Text(
                        'submit',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      onPressed: () => {clearText()},
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    );

}

