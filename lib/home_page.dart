// ignore_for_file: prefer_const_constructors

// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_uts/calculate_page.dart';
import 'package:flutter_application_uts/contact_page.dart';
import 'package:flutter_application_uts/gallery.dart';
import 'package:flutter_application_uts/profile_page.dart';
import 'package:flutter_application_uts/rad_btn.dart';
import 'package:flutter_application_uts/main.dart';
import 'package:flutter_application_uts/login_page.dart';
import 'package:flutter_application_uts/user_page.dart';
import 'package:flutter_application_uts/hello_page.dart';

class HomePage extends StatefulWidget {
  @override
  // final String username; //gender;
  // const HomePage({
  //   Key? key,
  //   required this.username,
  // })
  // //required this.gender})
  // : super(key: key);
  const HomePage({super.key});
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  final List<Widget> _widgetOptions = <Widget>[
    ContactPage(),
    ProfilePage(),
    GalleryPage(),
    Padding(
      padding: const EdgeInsets.fromLTRB(20, 105, 0, 0),
      child: Text(
        'Hello',
        style: TextStyle(fontSize: 50),
        textAlign: TextAlign.center,
        // style: optionStyle,
      ),
    ),
    RadioBtn_Page(),
    CalculatePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          backgroundColor: Colors.grey.shade300,
          animationDuration: Duration(milliseconds: 325),
          color: Colors.deepOrange,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(
              Icons.image,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.radio_button_checked,
              color: Colors.white,
            ),
            Icon(
              Icons.calculate,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            _onItemTapped(index);
          }),
    );
  }
}
