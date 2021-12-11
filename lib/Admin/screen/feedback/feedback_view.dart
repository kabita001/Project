
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/registrations.dart';
import 'package:ug_project/Admin/registration/teacher_reg.dart';
import 'package:ug_project/Admin/screen/feedback/feedback.dart';


class FeedbackView extends StatefulWidget {
  const FeedbackView({Key? key}) : super(key: key);


  @override
  _FeedbackViewState createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "View Feedback",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),

      body: ListView(
        children: <Widget>[(
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, bottom: 10.0, left: 15, right:8.0),
              child: Column(
                  children: [
                    // View feedback regarding facility
                    SizedBox(
                      width: 290.0,
                      height: 90.0,
                      child: Card(
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackPage())); 
                          },
                          splashColor: Colors.white,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:25.0, left: 10.0, right: 10.0,),
                              child: Column(
                                children: const [
                                  Text(
                                    "Facility",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
        
                    // view feedback faculty
                    const Padding(padding: EdgeInsets.only(top: 30),),
                    SizedBox(
                      width: 290.0,
                      height: 90.0,
                      child: Card(
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherRegistration())); 
                          },
                          splashColor: Colors.red[100],
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:25.0, left: 10.0, right: 10.0,),
                              child: Column(
                                children: const [
                                  Text(
                                    "Faculty",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //course
                    const Padding(padding: EdgeInsets.only(top: 30),),
                    SizedBox(
                      width: 290.0,
                      height: 90.0,
                      child: Card(
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherRegistration())); 
                          },
                          splashColor: Colors.redAccent,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:25.0, left: 10.0, right: 10.0,),
                              child: Column(
                                children: const [
                                  Text(
                                    "Course",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                        
                  ],
                ),
              ),
          )
        ),        
        ]),
    );
  }
}

