
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/registrations.dart';
import 'package:ug_project/Admin/screen/calendar/calendar_file.dart';
import 'package:ug_project/Admin/screen/course/course.dart';
import 'package:ug_project/Admin/screen/course/course_page.dart';
import 'package:ug_project/Admin/screen/feedback/feedback.dart';
import 'package:ug_project/Admin/screen/feedback/feedback_view.dart';
import 'package:ug_project/Admin/screen/upload.dart';
import 'login/login.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);


  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Admin Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Home Icon
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminDashboard())); 
                },
                leading: SizedBox(
                  child: Image.asset("assets/images/home.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Dashboard", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            // Profile
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/graduated.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Profile", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            // Feedback
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/feedback.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Feedback", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            // Registration
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen())); 
                },
                leading: SizedBox(
                  child: Image.asset("assets/images/course.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Account", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            // Class
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursePage())); 
                },
                leading: SizedBox(
                  child: Image.asset("assets/images/class.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Class", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            // TimeTable
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CalendarData())); 
                },
                leading: SizedBox(
                  child: Image.asset("assets/images/timetable.jpg", width: 50, height: 50,),
                ),
                title: const Text(
                  "Event & Calendar", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            //LogOut
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: (){logout(context);},
                leading: SizedBox(
                  child: Image.asset("assets/images/logout.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "LogOut", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, left: 15, right:8.0),
                child: Center(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      // Profile
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageUpload())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/graduated.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Feedback
                      const Padding(padding: EdgeInsets.only(right: 5,),),
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackPage())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/feedback.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Feedback",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Account Create
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackView())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/course.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Account",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      //Class
                      const Padding(padding: EdgeInsets.only(right: 5,),),
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCoursePage())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/class.png", width: 74.0, ),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Class",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //TimeTable                     
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const CalendarData())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/timetable.jpg", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "TimeTable",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 5,),),
                      //LogOut
                      SizedBox(
                        width: 140.0,
                        height: 140.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/logout.png", width: 64.0),
                                    const SizedBox(height: 0.0),
                                    ActionChip(
                                      label: const Text("Logout", style: TextStyle(
                                        fontSize:20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      onPressed: () {
                                        logout(context);
                                      },
                                      backgroundColor: Colors.white,
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
              ),
            ),
          ],
        ),        
      ),
    );
  }
  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}


