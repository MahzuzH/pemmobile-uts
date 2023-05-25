// ignore_for_file: prefere_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_uts/home_page.dart';
import 'package:flutter_application_uts/login_page.dart';
import 'package:flutter_application_uts/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
