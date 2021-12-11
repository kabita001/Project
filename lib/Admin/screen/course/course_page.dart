import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({ Key? key }) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0, bottom: 10.0, left: 15, right:8.0),
                child: Column(
                    children: [
                      // Add Course
                      SizedBox(
                        width: 190.0,
                        height: 190.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () { 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40.0, left: 10.0, right: 10.0,),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/accountcreate.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Add Course",
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

                      // Manage Account
                      const Padding(padding: EdgeInsets.only(top: 30),),
                      SizedBox(
                        width: 190.0,
                        height: 190.0,
                        child: Card(
                          color: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: InkWell(
                            onTap: () { 
                            },
                            splashColor: Colors.redAccent,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40.0, left: 10.0, right: 10.0,),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/manageaccount.png", width: 64.0),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "Manage Account",
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
          ],
        ),        
      ),
    );
  }
}