import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Rechner',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D1E33),
        scaffoldBackgroundColor: Colors.purple[900],
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.amber),
        ),
      ),
      home: InputPage(),
    );
  }
}
