import 'package:flutter/material.dart';
import 'package:flutter_application_uts/calculate_page.dart';
import 'package:flutter_application_uts/profile_page.dart';
import 'package:flutter_application_uts/main.dart';
import 'package:flutter_application_uts/login_page.dart';
import 'package:flutter_application_uts/submit_page.dart';
import 'package:flutter_application_uts/user_page.dart';

const List<String> list = <String>['', 'Subang', 'Bandung', 'Jakarta', 'Other'];

class RadioBtn_Page extends StatefulWidget {
  const RadioBtn_Page({super.key});

  @override
  State<RadioBtn_Page> createState() => _RadioBtn_PageState();
}

class _RadioBtn_PageState extends State<RadioBtn_Page> {
  String dropdownValue = list.first;
  String? job; //no radio button will be selected
  String? selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              "Take this quick quesioner",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 5),
            Text(
              "What is your job?",
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            RadioListTile(
              title: Text("College Student"),
              value: "CollegeStudent",
              groupValue: job,
              onChanged: (value) {
                setState(() {
                  job = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Lecturer"),
              value: "Lecturer",
              groupValue: job,
              onChanged: (value) {
                setState(() {
                  job = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: job,
              onChanged: (value) {
                setState(() {
                  job = value.toString();
                });
              },
            ),
            SizedBox(height: 10),
            Text(
              "Where do you live?",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(fontSize: 24),
              underline: Container(
                height: 2,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => submit(
                            alamat: dropdownValue, pekerjaan: job.toString())));
              }),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
              ),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
