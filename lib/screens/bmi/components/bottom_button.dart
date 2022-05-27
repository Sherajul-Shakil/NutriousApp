import 'package:flutter/material.dart';
import 'package:nutrious_web_app/screens/bmi/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),

        margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 10.0),
        width: 200,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: kBottomContainerColour,
        ),
      ),
    );
  }
}
