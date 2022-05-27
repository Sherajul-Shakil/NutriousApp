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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Team Members",
            style: GoogleFonts.breeSerif(
              fontSize: 40,
              color: Colors.green[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profile(
                imglink:
                    "https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/261987139_1160976230975804_8931723615844451955_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEUbgjvmIZE_iEiRcZDFOlSCkqYctQNEwMKSphy1A0TAxrK79z-yt-0qCpvCwPCH6eUqpfe2EwmM79mcKo8VnGZ&_nc_ohc=3X7XXD5qKeIAX8wG32b&_nc_ht=scontent.fdac27-1.fna&oh=00_AT8X3DkXMB-r3eC6RbYwwo3hol4-vQuOAgjsH3YA0zbPiA&oe=628CF8AA",
                name: "Sherajul Islam",
                email: "sherajulhakil@gmail.com",
                versity: "Patuakhali Science and Technology University",
              ),
              const SizedBox(
                width: 20,
              ),
              profile(
                imglink:
                    "https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/261944603_1602763020065569_8487732182862717382_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGolyts0fqQ7dKpMLXe8PitjEYo5ws3oiuMRijnCzeiKxArDSdEpCRCPPtysF2YfehfA92ABfbfvuclEMOXdSXS&_nc_ohc=N44hh48AJyQAX9hm0Km&_nc_ht=scontent.fdac27-2.fna&oh=00_AT-w-YWy5NBWClsBDNEf0hDg3tZ7fMLqFTT5d4kistOxJQ&oe=628B3719",
                name: "Maruf Hossain",
                email: "maruf@gmail.com",
                versity: "Patuakhali Science and Technology University",
              ),
              const SizedBox(
                width: 20,
              ),
              profile(
                imglink:
                    "https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/271122007_3340634456222888_3011377110959550127_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGbx-vV5ooZkPGVz-WdNUTNsE7cPsxUILWwTtw-zFQgtWHqn6ENJB0MZKhuCCW1NQoWFCh5E8WJ7bcg0Gkz0OFz&_nc_ohc=L0HOkI5pO8gAX9V17pz&_nc_ht=scontent.fdac27-1.fna&oh=00_AT_G2L1NHsMRY3LVE4-cCp3UMEbn6za80zD6WxwqDzn5Yg&oe=628CF75D",
                name: "Shadik Faysal",
                email: "shadik@gmail.com",
                versity: "Patuakhali Science and Technology University",
              ),
            ],
          ),
          Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 300),
            child: NavBar(),
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
              height: 350.0,
              width: 350.0,
              image: NetworkImage(imglink),
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
            fontSize: 40.0,
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