import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter_application_uts/home_page.dart';
import 'package:flutter_application_uts/login_page.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 1);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                gradient: LinearGradient(colors: [
                  (Colors.deepOrangeAccent),
                  Color.fromARGB(255, 206, 218, 213)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Icon(
                Icons.local_fire_department,
                size: 350,
              ),
            ),
          )
        ],
      ),
    );
  }
}
