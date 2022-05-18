import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nutrious_web_app/screens/bmi/screens/input_page.dart';
import 'package:nutrious_web_app/screens/home_page.dart';
import 'package:nutrious_web_app/screens/team_member.dart';
import 'package:nutrious_web_app/screens/bmi/main_bmi.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ignore: avoid_unnecessary_containers
        GNav(
            rippleColor:
                Colors.grey.shade800, // tab button ripple color when pressed
            hoverColor: Colors.grey.shade800, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: Colors.black, width: 1), // tab button border
            tabBorder:
                Border.all(color: Colors.grey, width: 1), // tab button border
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration:
                const Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.purple, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                Colors.purple.withOpacity(0.1), // selected tab background color
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 5), // navigation bar padding
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite_outline,
                text: 'Nutrition',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TeamMember()),
                  );
                },
              ),
              GButton(
                icon: Icons.boy_rounded,
                text: 'BMI',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.health_and_safety,
                text: 'BMR',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TeamMember()),
                  );
                },
              ),
              GButton(
                icon: Icons.card_membership,
                text: 'Team Member',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TeamMember()),
                  );
                },
              )
            ]),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
