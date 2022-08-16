import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(

      // primarySwatch: Colors.deepPurple,
      textTheme: const TextTheme(
        // headline1: TextStyle(color: Colors.deepPurpleAccent),
        // headline2: TextStyle(color: Colors.deepPurpleAccent),
        // bodyText2: TextStyle(color: Colors.deepPurpleAccent),
        // subtitle1: TextStyle(color: Colors.pinkAccent),
        bodyText2: TextStyle(color: Color.fromRGBO(1, 2, 3, 1)),
      ),
      brightness: Brightness.light,
      // fontFamily: GoogleFonts.rye().fontFamily,
      backgroundColor: const Color.fromRGBO(244, 243, 239, 2),
      appBarTheme: const AppBarTheme(
        // fontFamily: GoogleFonts.rye().fontFamily,
        toolbarTextStyle: TextStyle(
          color: Color.fromRGBO(1, 2, 3, 1),
          fontFamily: 'mine',
        ),
        titleTextStyle: TextStyle(color: Color.fromRGBO(1, 2, 3, 1)),
        backgroundColor: Color.fromRGBO(244, 243, 239, 2),
        elevation: 0.0,
        //    iconTheme: IconThemeData(color: Colors.black)
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      textTheme: const TextTheme(
          // headline1: TextStyle(color: Colors.deepPurpleAccent),
          // headline2: TextStyle(color: Colors.deepPurpleAccent),
          // bodyText2: TextStyle(color: Colors.deepPurpleAccent),
          // subtitle1: TextStyle(color: Colors.pinkAccent),
          bodyText2: TextStyle(color: Color.fromRGBO(244, 243, 239, 2))),
      // fontFamily: GoogleFonts.rye().fontFamily,
      backgroundColor: solidBlack,
      appBarTheme: const AppBarTheme(
        toolbarTextStyle: TextStyle(
            color: Color.fromRGBO(244, 243, 239, 2), fontFamily: 'mine'),
        titleTextStyle: TextStyle(color: Color.fromRGBO(244, 243, 239, 2)),
        backgroundColor: Colors.black,
        elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black)
      ));

  static ThemeData headerPart(BuildContext context) => ThemeData();
  static Color firstColor = const Color.fromRGBO(24, 25, 26, 2);
  static Color secColor = const Color.fromRGBO(246, 143, 160, 2);
  static Color darkWhiteColor = const Color.fromRGBO(225, 217, 209, 2);
  static Color creamColor = const Color.fromRGBO(255, 253, 208, 2);
  static Color darkColor = const Color.fromRGBO(58, 59, 60, 2);
  static Color solidBlack = const Color.fromRGBO(1, 2, 3, 1);
}



// class MoonTheme {
//   static ThemeData moon(BuildContext context) => ThemeData(
//         backgroundColor: Colors.transparent.withOpacity(0.3),
//         image
//       );
//   BoxDecoration box1 = BoxDecoration(
//     image: DecorationImage(
//         image: AssetImage("assets/back.jpg"), fit: BoxFit.cover),
//   );
// }