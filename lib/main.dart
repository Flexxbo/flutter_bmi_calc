import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Rechner',
      theme: ThemeData.dark().copyWith(primaryColor: Colors.purple[900]),
      home: InputPage(),
    );
  }
}
