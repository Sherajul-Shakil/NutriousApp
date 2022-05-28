import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nutrious_web_app/screens/bmi/screens/input_page.dart';
import 'package:nutrious_web_app/screens/bmr/screens/input_page.dart';
import 'package:nutrious_web_app/screens/home_page.dart';
import 'package:nutrious_web_app/screens/nutrient/constants.dart';
import 'package:nutrious_web_app/screens/nutrient/search_page.dart';
import 'package:nutrious_web_app/screens/team_member.dart';

class NavBar extends ConsumerStatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends ConsumerState<NavBar> {
  //var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(stateValue);
    //print(selectedIndex);
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
          tabActiveBorder: Border.all(
              color: Color.fromARGB(255, 41, 39, 39),
              width: 1), // tab button border
          tabBorder:
              Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.green.shade900, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.green.shade900
              .withOpacity(0.1), // selected tab background color
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
              icon: Icons.food_bank,
              text: 'Nutrient',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
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
                  MaterialPageRoute(builder: (context) => InputPageBMR()),
                );
              },
            ),
            GButton(
              icon: Icons.group,
              text: 'Team Member',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TeamMember()),
                );
              },
            )
          ],
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            ref.read(stateValue.notifier).state = index;
          },
        ),
      ],
    );
  }
}
