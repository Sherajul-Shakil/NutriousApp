import 'dart:ui';

import 'package:flutter/cupertino.dart';

String baseUrl = 'https://nutritionapiv2.herokuapp.com/test/q?name=';
String baseUrlV1 = 'https://nutrition-app-ssm.herokuapp.com/test/';

const primaryGreenColor = Color(0xff28C528);
const secondaryGreyColor = Color(0xffedf3fa);
const deepShadeColor = Color(0xffd3ebd3);
const lightShadeColor = Color(0xffc8e6c9);

const List<BoxShadow> homeBoxShadowColor = [
  //D8E2EC
  BoxShadow(
    color: Color(0xffD8E2EC),
    blurRadius: 3.0,
    spreadRadius: 1.0,
    offset: Offset(3, 3), // Shadow position
  ),
  BoxShadow(
    color: Color(0xffD8E2EC),
    blurRadius: 3.0,
    spreadRadius: 1.0,
    offset: Offset(3, 3), // Shadow position
  ),
  BoxShadow(
    color: Color(0xfffafcfd),
    blurRadius: 10.0,
    spreadRadius: 0,
    offset: Offset(-4, -4), // Shadow position
  ),
  BoxShadow(
    color: Color(0xfffafcfd),
    blurRadius: 10.0,
    spreadRadius: 0,
    offset: Offset(-4, -4), // Shadow position
  ),
];

const List<BoxShadow> buttonBoxShadowColor = [
  //D8E2EC
  BoxShadow(
    color: lightShadeColor,
    blurRadius: 3.0,
    spreadRadius: 1.0,
    offset: Offset(3, 3), // Shadow position
  ),
  BoxShadow(
    color: Color(0xffb4cfb4),
    // color: Colors.red,
    blurRadius: 3.0,
    spreadRadius: 1.0,
    offset: Offset(3, 3), // Shadow position
  ),
  BoxShadow(
    color: Color(0xffd8edd9),
    blurRadius: 10.0,
    spreadRadius: 0,
    offset: Offset(-4, -4), // Shadow position
  ),
  BoxShadow(
    color: Color(0xffd8edd9),
    blurRadius: 10.0,
    spreadRadius: 0,
    offset: Offset(-4, -4), // Shadow position
  ),
];
