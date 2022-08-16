import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget aboutAnim1(String currentDevice) {
  String str;
  if (currentDevice == 'mobile') {
    str =
        'I am a MCA student of Parul University Vadodara. I luv making android applications';
  } else if (currentDevice == 'tab') {
    str = '''I am a MCA student of Parul
University Vadodara.
I luv making android applications''';
  } else if (currentDevice == 'other') {
    str = '''I am a MCA student of Parul
University Vadodara.
I luv making android applications''';
  } else if (currentDevice == 'other1') {
    str = '''I am a MCA student of Parul University Vadodara.
I luv making android applications''';
  } else if (currentDevice == 'other2') {
    str = '''I am a MCA student of Parul University Vadodara.
I luv making android applications''';
  } else {
    str =
        'I am a MCA student of Parul University Vadodara. I luv making android applications as well as web applications. ';
  }

  return AnimatedTextKit(
    repeatForever: true,
    isRepeatingAnimation: false,
    animatedTexts: [
      TypewriterAnimatedText(str,
          textStyle: TextStyle(fontFamily: GoogleFonts.rye().fontFamily),
          curve: Curves.easeIn,
          speed: const Duration(milliseconds: 80)),
    ],
  );
}

Widget aboutAnim2(String currentDevice) {
  String str;
  if (currentDevice == 'mobile') {
    str = 'I created this portfolio using Flutter';
  } else if (currentDevice == 'tab') {
    str = 'as well as web applications. I created this portfolio using Flutter';
  } else if (currentDevice == 'other') {
    str = 'as well as web applications. I created this portfolio using Flutter';
  } else if (currentDevice == 'other1') {
    str = 'as well as web applications. I created this portfolio using Flutter';
  } else {
    str = 'as well as web applications. I created this portfolio using Flutter';
  }

  return AnimatedTextKit(
    isRepeatingAnimation: false,
    repeatForever: true,
    animatedTexts: [
      TypewriterAnimatedText(str,
          textStyle: TextStyle(fontFamily: GoogleFonts.rye().fontFamily),
          curve: Curves.easeIn,
          speed: const Duration(milliseconds: 180)),
    ],
  );
}

////        ORIGINAL ONE DO NOT TOUCH 
///============================================================================================
// Widget aboutAnim1(bool d) {
//   String forMob =
//       'I am a MCA student of Parul University Vadodara. I luv making android applications as well as web applications. ';
//   String others =
//       'I am a MCA student of Parul University Vadodara. I luv making android applications';

//   return AnimatedTextKit(
//     repeatForever: true,
//     isRepeatingAnimation: false,
//     animatedTexts: [
//       TypewriterAnimatedText(d ? forMob : others,
//           textStyle: TextStyle(fontFamily: GoogleFonts.rye().fontFamily),
//           curve: Curves.easeIn,
//           speed: const Duration(milliseconds: 80)),
//     ],
//   );
// }

// Widget aboutAnim2(bool d) {
//   String forMob = 'I created this portfolio using Flutter';
//   String others =
//       'as well as web applications. I created this portfolio using Flutter';
//   return AnimatedTextKit(
//     isRepeatingAnimation: false,
//     repeatForever: true,
//     animatedTexts: [
//       TypewriterAnimatedText(d ? forMob : others,
//           textStyle: TextStyle(fontFamily: GoogleFonts.rye().fontFamily),
//           curve: Curves.easeIn,
//           speed: const Duration(milliseconds: 180)),
//     ],
//   );
// }
///============================================================================================
