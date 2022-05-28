import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/bmi/components/reusable_card.dart';
import 'package:nutrious_web_app/screens/bmi/constants.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/one.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/section_three.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/section_two.dart';
import 'package:nutrious_web_app/screens/team_member.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Nutrious Website"),
        centerTitle: true,
        backgroundColor: Colors.green.shade100,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          one(height: height),
          const SizedBox(height: 100),
          const SectionTwo(),
          //const SectionThree(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Text(
              "Welcome to Nutritionist World",
              style: GoogleFonts.breeSerif(
                fontSize: 40,
                color: Colors.green[900],
              ),
            ),
          ),

          // Row(
          //   children: [
          //     Expanded(
          //       child: ReusableCard(
          //         colour: kActiveCardColour,
          //         cardChild: Padding(
          //           padding: const EdgeInsets.all(10),
          //           child: Text(
          //             'Minimum :  Calorieffffffffffffffffffffffffffrrrrrrrrrrrrrrrrrrddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
          //             textAlign: TextAlign.start,
          //             style: kBodyTextStyle,
          //           ),
          //         ),
          //         onPress: () {},
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 400,
          //     )
          //   ],
          // ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: NavBar(),
          ),
        ],
      ),
    ));
  }
}
