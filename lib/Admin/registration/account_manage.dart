
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/registrations.dart';
import 'package:ug_project/Admin/registration/teacher_reg.dart';


class AccountDashb extends StatefulWidget {
  const AccountDashb({Key? key}) : super(key: key);


  @override
  _AccountDashbState createState() => _AccountDashbState();
}

class _AccountDashbState extends State<AccountDashb> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),

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
                      // Create Account
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen())); 
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
                                      "Create Account",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherRegistration())); 
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

