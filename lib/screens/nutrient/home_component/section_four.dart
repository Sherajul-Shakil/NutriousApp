import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      color: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 120,
          ),
          Text(
            "_______Client Says",
            style: GoogleFonts.breeSerif(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "Latest Reviews",
            style: GoogleFonts.breeSerif(
              fontSize: 30,
              color: Colors.green[900],
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has \nbeen the industry's standard dummy text ever since the 1500s",
            style: GoogleFonts.breeSerif(
              fontSize: 15,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "images/comment1.jpg",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(
                            "James Brake",
                            style: GoogleFonts.breeSerif(
                              fontSize: 30,
                              color: Color.fromARGB(255, 16, 6, 43),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: GoogleFonts.breeSerif(
                            fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "images/comment2.jpg",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Roberto Jaksan",
                            style: GoogleFonts.breeSerif(
                              fontSize: 30,
                              color: Color.fromARGB(255, 16, 6, 43),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: GoogleFonts.breeSerif(
                            fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
