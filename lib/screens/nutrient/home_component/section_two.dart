import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                image: AssetImage("images/2.png"),
                fit: BoxFit.fitHeight,
              ),

              //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ABOUT US",
                style: GoogleFonts.breeSerif(
                  fontSize: 10,
                  color: Color.fromARGB(255, 138, 90, 27),
                ),
              ),
              Text(
                "Welcome To HealthFit",
                style: GoogleFonts.breeSerif(
                  fontSize: 40,
                  color: Colors.green[900],
                ),
              ),
              Text(
                "It's lonng time that, we are giving health service and tips.",
                style: GoogleFonts.breeSerif(
                  fontSize: 20,
                  color: Colors.green[500],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue.shade400,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Fruits and Vegitable Nutrients',
                        style: GoogleFonts.breeSerif(
                          fontSize: 15,
                          color: Colors.green[300],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue.shade400,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BMI Calculator Application',
                        style: GoogleFonts.breeSerif(
                          fontSize: 15,
                          color: Colors.green[300],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue.shade400,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BMR Calculator Application',
                        style: GoogleFonts.breeSerif(
                          fontSize: 15,
                          color: Colors.green[300],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Read More'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue.shade900),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          //side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
