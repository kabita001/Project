
/*import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/login.dart';
import 'package:ug_project/Admin/screen/feedback/speech_text.dart';
import 'package:ug_project/Teacher/teacher_home.dart';
import 'package:ug_project/student/student_home.dart';
import 'package:ug_project/welcome.dart';

class HomePage extends StatelessWidget {
const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 30),
        decoration: const BoxDecoration(
          color: Colors.redAccent,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 80,),
            const Center(
            child: Text("Welcome To PCPS", 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 35,
            ), ),
          ),
          const SizedBox(height: 10,),
          const Center(
            child: Text("Please Choose your ID.", 
            style: TextStyle(
              color: Colors.white, fontSize: 25,
            ),),
          ),
          const SizedBox(height: 20),
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )
              ),
              padding: const EdgeInsets.all(70),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                        onTap: (){
                          //changes should be made in the line below
                          //this navigator line will help to go to other page
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())); 
                        },
                        child: Container(
                          height: 30.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.0, 80.0), 
                                blurRadius: 80.0,
                                color: Colors.black12)
                            ],color: Colors.white,borderRadius: BorderRadius.circular(22.0),
                          ),
                          child: Container(
                            height: 25.0,
                            width: 180.0,
                            padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20, top: 30),
                            child: const Text('Admin',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0),
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height:20.0),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          //changes should be made in the line below
                          //this navigator line will help to go to other page
                         //Navigator.push(context, MaterialPageRoute(builder: (context) => const SpeechText())); 
                        },
                        child: Container(
                          width: 240.0,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.0, 20.0), 
                                blurRadius: 30.0,
                                color: Colors.black12)
                            ],color: Colors.white,borderRadius: BorderRadius.circular(22.0),
                          ),
                          child: Container(
                            height: 45.0,
                            padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20, top: 30),
                            child: const Text('Teacher',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0),
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          //changes should be made in the line below
                          //this navigator line will help to go to other page
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentDashboard())); 
                        },
                        child: Container(
                          width: 240.0,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.0, 20.0), 
                                blurRadius: 30.0,
                                color: Colors.black12)
                            ],color: Colors.white,borderRadius: BorderRadius.circular(22.0),
                          ),
                          child: Container(
                            height: 55.0,
                            width: 180.0,
                            padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20, top: 30),
                            child: const Text('Student',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0),
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          //changes should be made in the line below
                          //this navigator line will help to go to other page
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage())); 
                        },
                        child: Container(
                          width: 350.0,
                          padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20, top: 25),
                          child: const Text('Go Back',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                        ),
                        
                      ),
                    ),
                ],
                ),
              ),
            ),
        ],),
      ),
    );
  }
}
*/