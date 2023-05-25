// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, curly_braces_in_flow_control_structures, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_application_uts/hello_page.dart';
import 'package:flutter_application_uts/main.dart';
import 'package:flutter_application_uts/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: unused_field

  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String username = "mahzuz";
  String password = "mahzuz";
  bool passToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.local_fire_department,
                    size: 150,
                  ),
                  SizedBox(height: 50),
                  // Hello again
                  Text(
                    'Hello Again!',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome back, we miss you!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50),

                  //username textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(13, 25, 10, 20),
                        border: InputBorder.none,
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.grey[50],
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value != usernameController.text) {
                          return 'Wrong username';
                        } else
                          return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      obscureText: !passToggle,
                      controller: passController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[50],
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            icon: Icon(
                              passToggle
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          )
                          // suffix: InkWell(
                          //   onTap: () {
                          //     setState(() {
                          //       passToggle = !passToggle;
                          //     });
                          //   },
                          //   child: Icon(
                          //     passToggle
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //   ),
                          // ),
                          ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
                          return "Enter correct password";
                        } else
                          return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                  // login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  // not a member?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Register Here',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
