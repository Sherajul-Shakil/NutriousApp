import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrious_web_app/screens/bmr/calculator_brain.dart';
import 'package:nutrious_web_app/screens/bmr/components/bottom_button.dart';
import 'package:nutrious_web_app/screens/bmr/components/icon_content.dart';
import 'package:nutrious_web_app/screens/bmr/components/reusable_card.dart';
import 'package:nutrious_web_app/screens/bmr/components/round_icon_button.dart';
import 'package:nutrious_web_app/screens/bmr/constants.dart';
import 'package:nutrious_web_app/screens/bmr/screens/results_page.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';

enum Gender {
  male,
  female,
}

class InputPageBMR extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPageBMR> {
  //late Gender? selectedGender = Gender.male;

  bool isMaleSelected = true;
  int height = 160;
  int weight = 60;
  int age = 20;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Calculate Your MBR",
              style: GoogleFonts.breeSerif(
                fontSize: 40,
                color: Colors.green[900],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        isMaleSelected = true;
                      });
                    },
                    colour: isMaleSelected == true
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: Icons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        isMaleSelected = false;
                      });
                    },
                    colour: isMaleSelected == false
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: Icons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor:
                              Color.fromARGB(255, 255, 255, 255),
                          activeTrackColor: Colors.green.shade700,
                          thumbColor: Colors.green.shade700,
                          overlayColor: Colors.green.shade200,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundIconButton(
                                      icon: Icons.remove,
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      }),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                    icon: Icons.add,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundIconButton(
                                    icon: Icons.remove,
                                    onPressed: () {
                                      setState(
                                        () {
                                          age--;
                                        },
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundIconButton(
                                      icon: Icons.add,
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      })
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                    isMale: isMaleSelected,
                    height: height,
                    weight: weight,
                    age: age);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMR(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                      tips: calc.getTips(),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            NavBar()
          ],
        ),
      ),
    );
  }
}
