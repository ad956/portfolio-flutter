import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget codeAnim(String currentDevice) {
  double mySize;
  if (currentDevice == 'mobile') {
    mySize = 15;
  } else if (currentDevice == 'tab') {
    mySize = 15;
  } else if (currentDevice == 'other') {
    mySize = 15;
  } else if (currentDevice == 'other1') {
    mySize = 20;
  } else {
    mySize = 24;
  }
  const str = """
Class HelloWorld {
    public static void main(String[ ] args) {
        System.out.println("Hello, World ❤️ !!!"); 
    }
} """;
  return AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
    TyperAnimatedText(str,
        textStyle: TextStyle(fontSize: mySize), //24
        speed: const Duration(milliseconds: 180)),
  ]);
}


// DO NOT TOUCH , THE ORIGINAL ONE 
//===================================================
// Widget codeAnim(bool d) {
//   const str = """
// Class HelloWorld {
//     public static void main(String[ ] args) {
//         System.out.println("Hello, World ❤️ !!!"); 
//     }
// } """;
//   return AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
//     TyperAnimatedText(str,
//         textStyle: TextStyle(fontSize: d ? 15 : 24), //24
//         speed: const Duration(milliseconds: 180)),
//   ]);
// }
//=================================================
//Widget _textLiquidFillAnimation() {
//   const str = """
// class HelloWorld {
//     public static void main(String[] args) {
//         System.out.println("Hello, World!"); 
//     }
// } """;
//   return SizedBox(
//     child: Center(
//       child: TextLiquidFill(
//         text: str,
//         waveDuration: const Duration(seconds: 10),
//         waveColor: Colors.blue,
//         boxBackgroundColor: Colors.black,
//         textStyle: TextStyle(
//           fontSize: 50.0,
//           fontWeight: FontWeight.bold,
//           fontFamily: GoogleFonts.rye().fontFamily,
//         ),
//       ),
//     ),
//   );
// }