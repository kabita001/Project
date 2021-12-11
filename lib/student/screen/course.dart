// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SCourse extends StatefulWidget {
  const SCourse({ Key? key }) : super(key: key);

  @override
  _SCourseState createState() => _SCourseState();
}

class _SCourseState extends State<SCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Course',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.redAccent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 250.0,
                          minWidth: 30.0,
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A2),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20, height: 1.2,),
                      ),
                      onPressed: () {},
                      child: const Text('COMPARATIVE INTEGRATED SYSTEMS'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 55, right: 55, top: 20, bottom: 20),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('UNDERGRADUATE PROJECT'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}