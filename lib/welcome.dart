
import 'package:flutter/material.dart';
import 'package:ug_project/Admin/login/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.9,
                child: Image.asset('assets/images/background.jpg',
                fit:BoxFit.fill),
              )
            ),
            const SizedBox(height: 90),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:220.0),
                child: ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20, top: 20),
                    primary: Colors.redAccent, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                   },
                  child: const Text('Lets get started ->',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
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