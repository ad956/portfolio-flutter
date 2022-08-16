import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget nameTyper(String currentDevice) {
  double mySize;

  if (currentDevice == 'mobile') {
    mySize = 22;
  } else if (currentDevice == 'tab') {
    mySize = 22;
  } else if (currentDevice == 'other') {
    mySize = 22;
  } else {
    mySize = 50;
  }
  return AnimatedTextKit(
    repeatForever: true,
    animatedTexts: [
      TypewriterAnimatedText('I AM ANAND ',
          textStyle: TextStyle(
            fontSize: mySize, //50
            fontFamily: GoogleFonts.rye().fontFamily,
          ),
          curve: Curves.easeIn,
          speed: const Duration(milliseconds: 180)),
    ],
  );
}



///       THE ORIGINAL ONE /////
// Widget nameTyper(bool d) {
//   return AnimatedTextKit(
//     repeatForever: true,
//     animatedTexts: [
//       TypewriterAnimatedText('I AM ANAND ',
//           textStyle: TextStyle(
//             fontSize: d ? 22 : 50, //50
//             fontFamily: GoogleFonts.rye().fontFamily,
//           ),
//           curve: Curves.easeIn,
//           speed: const Duration(milliseconds: 180)),
//     ],
//   );
// }
