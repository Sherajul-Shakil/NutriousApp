import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/bmi/components/reusable_card.dart';
import 'package:nutrious_web_app/screens/bmi/constants.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/one.dart';

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
          // Container(
          //   height: height,
          //   width: width,
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 500,
          //         width: double.infinity,
          //         decoration: const BoxDecoration(
          //           image: DecorationImage(
          //               colorFilter:
          //                   ColorFilter.mode(Colors.black54, BlendMode.darken),
          //               image: AssetImage("images/1.jpg"),
          //               fit: BoxFit.cover),

          //           //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'A nutritionist is a person who advises others on matters of food and nutrition and their impacts on health. Some people specialize in particular areas, such as sports nutrition, public health, or animal nutrition, among other disciplines. In many countries, a person can claim to be a nutritionist even without any training, education, or professional license, in contrast to a dietitian, who has a university degree, professional license, and certification for professional practice.',
                      textAlign: TextAlign.start,
                      style: kBodyTextStyle,
                    ),
                  ),
                  onPress: () {},
                ),
              ),
              const SizedBox(
                width: 400,
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 400,
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '''
                      A review of over 12,000 people 
                      in the United States, published in 2014, s
                      howed that people with a BMI of 25-29.9 had a 
                      50% increased risk of diabetes compared to 
                      
                      ''',
                      textAlign: TextAlign.start,
                      style: kBodyTextStyle,
                    ),
                  ),
                  onPress: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Minimum :  Calorieffffffffffffffffffffffffffrrrrrrrrrrrrrrrrrrddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
                      textAlign: TextAlign.start,
                      style: kBodyTextStyle,
                    ),
                  ),
                  onPress: () {},
                ),
              ),
              const SizedBox(
                width: 400,
              )
            ],
          ),
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
