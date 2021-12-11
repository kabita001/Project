
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/screen/calendar/calendar_file.dart';


class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({Key? key}) : super(key: key);


  @override
  _TeacherDashboardState createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Teacher Dashboard",
          style: TextStyle(
            color: Colors.white,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard())); 
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
            // Class
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/graduated.png", width: 64.0),
                                    const SizedBox(height: 15.0),
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
                      
                      //Class
                    
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/class.png", width: 74.0),
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
                                    Image.asset("assets/images/timetable.jpg", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Event&Calendar",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard())); 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/logout.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "LogOut",
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
}

