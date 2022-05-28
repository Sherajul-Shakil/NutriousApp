import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class one extends StatelessWidget {
  const one({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: <Widget>[
        // Max Size Widget
        Container(
          height: height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Color.fromARGB(181, 0, 0, 0), BlendMode.darken),
                image: AssetImage("images/1.jpg"),
                fit: BoxFit.cover),

            //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Find Your Healthy Fit\n',
                  style: GoogleFonts.breeSerif(
                    fontSize: 80,
                    color: Color.fromARGB(255, 250, 250, 249),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '''

Not just being fit to the point of sufficiency, but being the fittest. 
So, the question is, What can you do to be the fittest you can 
be, or to obtain the best quality of life possible?''',
                      style: GoogleFonts.breeSerif(
                        fontSize: 20,
                        color: Color.fromARGB(255, 250, 250, 249),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: 30,
        //   right: 20,
        //   child: Container(
        //     height: 100,
        //     width: 150,
        //     color: Colors.blue,
        //     child: Center(
        //       child: Text(
        //         'Middle Widget',
        //         style: TextStyle(color: Colors.white, fontSize: 20),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
