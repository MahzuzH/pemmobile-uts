import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_uts/calculate_page.dart';
import 'package:flutter_application_uts/main.dart';
import 'package:flutter_application_uts/login_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController number_one = TextEditingController();
  TextEditingController number_two = TextEditingController();
  TextEditingController number_three = TextEditingController();
  TextEditingController number_four = TextEditingController();

  double? result = 0,
      result2 = 0,
      result3 = 0,
      num1 = 0,
      num2 = 0,
      num3 = 0,
      num4 = 0;
  luas_persegi() {
    setState(() {
      num1 = double.parse(number_one.text);
      result = num1! * num1!;
    });
  }

  kel_persegi() {
    setState(() {
      num1 = double.parse(number_one.text);
      result = 2 * (num1! + num1!);
    });
  }

  luas_lingkaran() {
    setState(() {
      num2 = double.parse(number_two.text);
      result2 = 3.14 * num2! * num2!;
    });
  }

  kel_lingkaran() {
    setState(() {
      num2 = double.parse(number_two.text);
      result2 = 2 * 3.14 * (num2!);
    });
  }

  volume_tabung() {
    setState(() {
      num3 = double.parse(number_three.text);
      num4 = double.parse(number_four.text);
      result3 = 3.14 * num3! * num3! * num4!;
    });
  }

  kel_tabung() {
    setState(() {
      num3 = double.parse(number_three.text);
      num4 = double.parse(number_four.text);
      result3 = 2 * 3.14 * num3! * (num3! + num4!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Press the button below!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
