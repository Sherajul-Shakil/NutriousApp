import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        width: width,
        height: 70,
        color: Colors.grey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "HealtyFit",
              style: GoogleFonts.breeSerif(
                fontSize: 50,
                color: Colors.green[900],
              ),
            ),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}
