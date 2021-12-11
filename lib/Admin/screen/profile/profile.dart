/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseDisplay extends StatefulWidget {
  const FirebaseDisplay({ Key? key }) : super(key: key);

  @override
  _FirebaseDisplayState createState() => _FirebaseDisplayState();
}

class _FirebaseDisplayState extends State<FirebaseDisplay> {

CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder(stream: CollectionReference.snapshots()),
            ),
          ],
        ),
      ),
    );
  }
}
*/