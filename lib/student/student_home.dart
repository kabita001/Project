
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/login.dart';
import 'package:ug_project/Admin/screen/calendar/calendar_file.dart';
import 'package:ug_project/Admin/screen/feedback/feedback.dart';
import 'package:ug_project/student/screen/course.dart';
class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);


  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  get firebaseUser => null;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Student Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        /* side button
        elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
        ),*/
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Home Icon
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/home.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Home", style: TextStyle(
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
            // Course
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/course.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Courses", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            //Attendance
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/attendance.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Attendance", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            //Exam
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: SizedBox(
                  child: Image.asset("assets/images/exam.png", width: 50, height: 50,),
                ),
                title: const Text(
                  "Exam", style: TextStyle(
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
                leading: SizedBox(
                  child: Image.asset("assets/images/timetable.jpg", width: 50, height: 50,),
                ),
                title: const Text(
                  "Events & Calender", style: TextStyle(
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
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Container(
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(5),),
                    const Text(
                      "Janvi Sharma",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 5.0, top: 10.0),),
                        Text(
                          "Standard: L6",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0, left: 10,),),
                        Text(
                          "Section: A",
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10,),),
                      ],
                    ),
                  ],
                ),
              ),
            ),*/
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10.0, left: 15, right:8.0),
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
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Home())); 
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
                      //Course
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SCourse())); 
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
                                      "Courses",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const CalendarData())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/timetable.jpg", width: 68.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Event&Calender",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                            onTap: () {
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherRegistration())); 
                            },
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

