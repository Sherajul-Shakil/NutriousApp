import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/screens/team_member.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      color: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            "My Team",
            style: GoogleFonts.breeSerif(
              fontSize: 40,
              color: Colors.green[900],
            ),
          ),
          Text(
            "We are students of Computer Science and Engineering. We are not nutritionist \nbut we are trying to give basic health care and tips.",
            style: GoogleFonts.breeSerif(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
