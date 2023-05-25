import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  @override
  final String username; //gender;
  const HelloPage({
    Key? key,
    required this.username,
  })
  //required this.gender})
  : super(key: key);
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Hello! ${widget.username}',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
