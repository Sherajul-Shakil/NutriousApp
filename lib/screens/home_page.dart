import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/home_navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/one.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/section_four.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/section_three.dart';
import 'package:nutrious_web_app/screens/nutrient/home_component/section_two.dart';

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
      // appBar: AppBar(
      //   title: Text(
      //     "HealthyFit",
      //     style: GoogleFonts.breeSerif(
      //       fontSize: 30,
      //       color: Colors.white70,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.green.shade200,
      //   automaticallyImplyLeading: false,
      // ),
      body: ListView(
        children: [
          HomeNavbar(width: width),
          one(height: height),
          const SizedBox(height: 100),
          const SectionTwo(),
          const SectionThree(),
          const SectionFour(),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: NavBar(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
