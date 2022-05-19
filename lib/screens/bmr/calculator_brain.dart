import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nutrious_web_app/screens/bmi/screens/input_page.dart';

class CalculatorBrain {
  CalculatorBrain(
      {required this.isMale,
      required this.height,
      required this.weight,
      required this.age});

  final bool isMale;
  final int height;
  final int weight;
  final int age;

  late double _bmr;

  String calculateBMR() {
    if (isMale) {
      _bmr = 66 + (13.7 * weight) + (5 * height) - (6.8 * age);
    } else {
      _bmr = 655 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
    }
    return _bmr.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmr >= 25) {
      return 'Overweight';
    } else if (_bmr > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmr >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmr >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  int getTips() {
    if (_bmr >= 25) {
      return 1;
    } else if (_bmr >= 18.5) {
      return 2;
    } else {
      return 3;
    }
  }
}
