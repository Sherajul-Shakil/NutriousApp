import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/bmi/components/bottom_button.dart';

import 'package:nutrious_web_app/screens/bmi/components/reusable_card.dart';
import 'package:nutrious_web_app/screens/bmi/constants.dart';
import 'package:nutrious_web_app/screens/bmi/tips/fat_tips.dart';
import 'package:nutrious_web_app/screens/bmi/tips/health_tips.dart';
import 'package:nutrious_web_app/screens/bmi/tips/thin_tips.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.interpretation,
    required this.bmiResult,
    required this.resultText,
    required this.tips,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final int tips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BMI CALCULATOR'),
      //   centerTitle: true,
      //   backgroundColor: Color(0xFFEB1555),
      //   automaticallyImplyLeading: false,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your BMI is:",
                  style: GoogleFonts.breeSerif(
                    fontSize: 40,
                    color: Colors.green[900],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                    // GestureDetector(
                    //   child: Container(
                    //     child: Text('Get more tips'),
                    //   ),
                    //   onTap: () {
                    //     if (tips == 1) {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => FatTips(),
                    //         ),
                    //       );
                    //     } else if (tips == 2) {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => HealthTips(),
                    //         ),
                    //       );
                    //     } else {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => ThinTips(),
                    //         ),
                    //       );
                    //     }
                    //   },
                    // )
                  ],
                ),
                onPress: () {},
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 200, vertical: 10),
              child: BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
