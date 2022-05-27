import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/bmr/components/bottom_button.dart';

import 'package:nutrious_web_app/screens/bmr/components/reusable_card.dart';
import 'package:nutrious_web_app/screens/bmr/constants.dart';
import 'package:nutrious_web_app/screens/bmr/tips/fat_tips.dart';
import 'package:nutrious_web_app/screens/bmr/tips/health_tips.dart';
import 'package:nutrious_web_app/screens/bmr/tips/thin_tips.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.interpretation,
    required this.bmiResult,
    required this.resultText,
    required this.tips,
  });

  final double bmiResult;
  final String resultText;
  final String interpretation;
  final int tips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BMR CALCULATOR'),
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
                  "Your MBR is:",
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
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Text(
                      //   resultText.toUpperCase(),
                      //   style: kResultTextStyle,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       bmiResult.toStringAsFixed(1),
                      //       style: kBMITextStyle,
                      //     ),
                      //     Text(
                      //       'Calorie',
                      //       style: kLabelTextStyle,
                      //     )
                      //   ],
                      // ),
                      Text(
                        'Minimum : ${(bmiResult).toStringAsFixed(1)} Calorie',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      Text(
                        'Sedentary : ${(bmiResult * 1.2).toStringAsFixed(1)} Calorie',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      Text(
                        'Light Activity : ${(bmiResult * 1.375).toStringAsFixed(1)} Calorie',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      Text(
                        'Moderate Activity : ${(bmiResult * 1.55).toStringAsFixed(1)} Calorie',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      Text(
                        'Very Active : ${(bmiResult * 1.9).toStringAsFixed(1)} Calorie',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
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
