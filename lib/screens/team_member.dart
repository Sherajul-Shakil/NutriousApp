import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: const Text("Team Members"),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xFFEB1555),
      //   automaticallyImplyLeading: false,
      // ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.green.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                "Team Members",
                style: GoogleFonts.breeSerif(
                  fontSize: 40,
                  color: Colors.green[900],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                profile(
                  imglink: "images/shakil.jpg",
                  name: "Sherajul Islam",
                  email: "sherajulshakil14@cse.pstu.ac.bd",
                  versity: "Patuakhali Science and Technology University",
                ),
                const SizedBox(
                  width: 20,
                ),
                profile(
                  imglink: "images/maruf.jpg",
                  name: "Maruf Hossain",
                  email: "maruf14@cse.pstu.ac.bd",
                  versity: "Patuakhali Science and Technology University",
                ),
                const SizedBox(
                  width: 20,
                ),
                profile(
                  imglink: "images/shadik.jpg",
                  name: "Shadik Faysal",
                  email: "shadik14@cse.pstu.ac.bd",
                  versity: "Patuakhali Science and Technology University",
                ),
              ],
            ),
          ),
          Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 300),
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

class profile extends StatelessWidget {
  profile({
    required this.imglink,
    required this.name,
    required this.email,
    required this.versity,
  });

  final String name;
  final String email;
  final String imglink;
  final String versity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: ClipOval(
            child: Image(
              height: 300.0,
              width: 300.0,
              image: AssetImage(imglink),
              //AssetImage('assets/images/profile_pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          email,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          versity.toString(),
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}

//Text("This is Team member page")