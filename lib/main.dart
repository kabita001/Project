
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ug_project/welcome.dart';
import 'package:get/get.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const GetMaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   final storage = const FlutterSecureStorage();
   Future<bool> checkLoginStatus() async{
     String? value = await storage.read(key: "uid");
     if (value == null){
       return false;
     }
     return true;
   }
  @override
  Widget build(BuildContext context) {
    return  const WelcomePage(

    );
  }
}
