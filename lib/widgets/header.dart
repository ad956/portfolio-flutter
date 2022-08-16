// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio/pages/contact_page.dart';
// import 'package:portfolio/pages/home.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/theme_model.dart';
// import 'dart:ui' as ui;

// class Header extends StatelessWidget implements PreferredSizeWidget {
//   const Header({Key? key, required this.appBar}) : super(key: key);
//   @override
//   // ignore: override_on_non_overriding_member
//   final TextStyle headerStyle = const TextStyle(
//     fontSize: 19,
//     // wordSpacing: 20,
//     color: Color.fromRGBO(244, 243, 239, 2),
//   );
//   final AppBar appBar;

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(builder: (context, ThemeModel themeNotifier, child) {
//       return LayoutBuilder(builder: (context, constraints) {
//         // child:
//         final bool deviceWidth = constraints.maxWidth < 600 ? true : false;

//         return AppBar(
//           // elevation: themeNotifier.isDark
//           //     ? MyTheme.darkTheme(context).appBarTheme.elevation
//           //     : MyTheme.darkTheme(context).appBarTheme.elevation,
//           // iconTheme: const IconThemeData(color: Colors.black),
//           automaticallyImplyLeading: false,
//           // backgroundColor: themeNotifier.isDark
//           //     ? MyTheme.darkTheme(context).appBarTheme.backgroundColor
//           //     : MyTheme.lightTheme(context).appBarTheme.backgroundColor,
//           title: nameAnim(deviceWidth),
//           actions: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(18),
//               child: Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 // crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TopBar(1, "Home"),
//                   SizedBox(
//                     width: deviceWidth ? 1 : 20,
//                   ),
//                   TopBar(2, "About"),
//                   SizedBox(
//                     width: deviceWidth ? 1 : 20,
//                   ),
//                   TopBar(3, "Skills"),
//                   SizedBox(
//                     width: deviceWidth ? 1 : 20,
//                   ),
//                   TopBar(4, "My Work"),
//                   SizedBox(
//                     width: deviceWidth ? 1 : 20,
//                   ),
//                   TopBar(5, "Contact"),
//                   SizedBox(
//                     width: deviceWidth ? 1 : 20,
//                   ),
//                   IconButton(
//                       padding: EdgeInsets.zero,
//                       onPressed: () async {
//                         themeNotifier.isDark
//                             ? themeNotifier.isDark = false
//                             : themeNotifier.isDark = true;

//                         if (themeNotifier.isDark == false) {
//                           // SharedPreferences sp =
//                           //     await SharedPreferences.getInstance();
//                           // sp.setString('isDarkTheme', "false");
//                         }
//                       },
//                       icon: themeNotifier.isDark
//                           ? const Icon(
//                               CupertinoIcons.sun_max_fill,
//                               size: 22,
//                               color: Colors.white,
//                             )
//                           : const Icon(
//                               CupertinoIcons.moon_stars,
//                               size: 22,
//                               color: Colors.black,
//                             ))
//                 ],
//               ),
//             )
//           ],
//         );
//       });
//     });
//   }

//   Widget TopBar(int index, String text) {
//     bool hovered = false;

//     final TextStyle headerStyle = const TextStyle(
//       fontSize: 19,
//       //color: Color.fromRGBO(244, 243, 239, 2),
//     );

//     final TextStyle headerStyleAfter = const TextStyle(
//       fontSize: 20,
//       // wordSpacing: 20,
//       color: Colors.deepPurple,
//     );

//     final TextStyle headerStyleMobile = const TextStyle(
//       fontSize: 18,
//       //color: Color.fromRGBO(244, 243, 239, 2),
//     );
//     return InkWell(
//       onTap: () {
//         if (index == 1) {
//           // Navigator.of(context)
//           // .push(MaterialPageRoute(builder: (context) => ContactPage()));
//         }
//       },
//       onHover: ((value) {
//         // setState(() {
//         //   hovered = value;
//         // });
//       }),
//       child: Text(
//         text,
//         style: hovered ? headerStyleAfter : headerStyle,
//       ),
//     );
//   }

//   @override

//   // Size get preferredSize => throw UnimplementedError();
//   Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
// }

// TweenAnimationBuilder<double> nameAnim(bool dd) {
//   return TweenAnimationBuilder(
//     // ignore: sort_child_properties_last
//     child: dd
//         ? const Text(
//             "Ad", // "★Añ@nD \$úth@R ❤️",
//             style: TextStyle(
//               fontSize: 25,
//               // color: Color.fromRGBO(244, 243, 239, 2),
//               fontFamily: 'mine',
//             ),
//           )
//         : const Text(
//             "Añ@nD \$úth@R", // "★Añ@nD \$úth@R ❤️",
//             style: TextStyle(
//                 fontSize: 29,
//                 // color: Color.fromRGBO(244, 243, 239, 2),
//                 fontFamily: 'mine',
//                 wordSpacing: 10),
//           ),
//     tween: Tween<double>(begin: 0, end: 1),
//     duration: const Duration(seconds: 5),
//     builder: (context, double value, Widget? child) {
//       return Opacity(
//         opacity: value,
//         child: child,
//       );
//     },
//   );
// }

// // ignore: must_be_immutable
// // class TopBar extends StatefulWidget {
// //   const TopBar({
// //     Key? key,
// //     required this.text,
// //     required this.index,
// //   }) : super(key: key);
// //   final String text;
// //   final int index;
// //   @override
// //   State<TopBar> createState() => _TopBarState();
// // }

// // class _TopBarState extends State<TopBar> {
// //   bool hovered = false;

// //   final TextStyle headerStyle = const TextStyle(
// //     fontSize: 19,
// //     //color: Color.fromRGBO(244, 243, 239, 2),
// //   );

// //   final TextStyle headerStyleAfter = const TextStyle(
// //     fontSize: 20,
// //     // wordSpacing: 20,
// //     color: Colors.deepPurple,
// //   );

// //   final TextStyle headerStyleMobile = const TextStyle(
// //     fontSize: 18,
// //     //color: Color.fromRGBO(244, 243, 239, 2),
// //   );

// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(builder: ((context, constraints) {
// //       // final bool deviceWidth = constraints.maxWidth <= 480 ? true : false;
// //       bool isTablet;
// //       bool isPhone;

// //       final double devicePixelRatio = ui.window.devicePixelRatio;
// //       final ui.Size size = ui.window.physicalSize;
// //       final double width = size.width;
// //       final double height = size.height;

// //       if (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
// //         isTablet = true;
// //         isPhone = false;
// //       } else if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
// //         isTablet = true;
// //         isPhone = false;
// //       } else {
// //         isTablet = false;
// //         isPhone = true;
// //       }
// //       if (isPhone) {
// //         return InkWell(
// //           onTap: () {
// //             // if (widget.index == 1) {
// //             print(widget.text);
// //             // }
// //           },
// //           child: Padding(
// //             padding: const EdgeInsets.only(left: 9),
// //             child: Text(
// //               widget.text,
// //               style: headerStyleMobile,
// //             ),
// //           ),
// //         );
// //       } else {
// //         return InkWell(
// //           onTap: () {
// //             if (widget.index == 1) {
// //               // Navigator.of(context)
// //               // .push(MaterialPageRoute(builder: (context) => ContactPage()));
// //             }
// //           },
// //           onHover: ((value) {
// //             setState(() {
// //               hovered = value;
// //             });
// //           }),
// //           child: Text(
// //             widget.text,
// //             style: hovered ? headerStyleAfter : headerStyle,
// //           ),
// //         );
// //       }
// //     }));
// //   }
// // }
