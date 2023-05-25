// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController number_one = TextEditingController();
  TextEditingController number_two = TextEditingController();
  TextEditingController number_three = TextEditingController();
  TextEditingController number_four = TextEditingController();
  TextEditingController number_five = TextEditingController();
  TextEditingController number_six = TextEditingController();

  int? result = 0, num1 = 0, num2 = 0;
  double? result2 = 0,
      result3 = 0,
      result4 = 0,
      num3 = 0,
      num4 = 0,
      num5 = 0,
      num6 = 0;

  add() {
    setState(() {
      num1 = int.parse(number_one.text);
      num2 = int.parse(number_two.text);
      result = num1! + num2!;
    });
  }

  min() {
    setState(() {
      num1 = int.parse(number_one.text);
      num2 = int.parse(number_two.text);
      result = num1! - num2!;
    });
  }

  div() {
    setState(() {
      num1 = int.parse(number_one.text);
      num2 = int.parse(number_two.text);
      result = num1! ~/ num2!;
    });
  }

  times() {
    setState(() {
      num1 = int.parse(number_one.text);
      num2 = int.parse(number_two.text);
      result = num1! * num2!;
    });
  }

  luas_persegi() {
    setState(() {
      num3 = double.parse(number_three.text);
      result2 = num3! * num3!;
    });
  }

  kel_persegi() {
    setState(() {
      num3 = double.parse(number_three.text);
      result2 = 2 * (num3! + num3!);
    });
  }

  luas_lingkaran() {
    setState(() {
      num4 = double.parse(number_four.text);
      result3 = 3.14 * num4! * num4!;
    });
  }

  kel_lingkaran() {
    setState(() {
      num4 = double.parse(number_four.text);
      result3 = 2 * 3.14 * (num4!);
    });
  }

  volume_tabung() {
    setState(() {
      num5 = double.parse(number_five.text);
      num6 = double.parse(number_six.text);
      result4 = 3.14 * num5! * num5! * num6!;
    });
  }

  kel_tabung() {
    setState(() {
      num5 = double.parse(number_five.text);
      num6 = double.parse(number_six.text);
      result4 = 2 * 3.14 * num5! * (num5! + num6!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 35),
              Text(
                "Calculator",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Result = $result",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: number_one,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: number_two,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        add();
                        number_one.clear();
                        number_two.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        min();
                        number_one.clear();
                        number_two.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Minus",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        times();
                        number_one.clear();
                        number_two.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Times",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        div();
                        number_one.clear();
                        number_two.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Divide",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "Persegi",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Result = $result2",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: number_three,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Side",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        luas_persegi();
                        number_three.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Luas persegi",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        kel_persegi();
                        number_three.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Keliling persegi",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 35),
              Text(
                "Lingkaran",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Result = $result3",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: number_four,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Radius",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        luas_lingkaran();
                        number_four.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Luas lingkaran",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        kel_lingkaran();
                        number_four.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Keliling lingkaran",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 35),
              Text(
                "Tabung",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Result = $result4",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: number_five,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Radius",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: number_six,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Height",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        volume_tabung();
                        number_five.clear();
                        number_six.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Volume tabung",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        kel_tabung();
                        number_five.clear();
                        number_six.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text(
                        "Luas permukaan tabung",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
