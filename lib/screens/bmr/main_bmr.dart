import 'package:flutter/material.dart';
import 'package:nutrious_web_app/screens/bmr/screens/input_page.dart';
import 'package:nutrious_web_app/screens/bmr/screens/input_page.dart';

//void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPageBMR(),
    );
  }
}
