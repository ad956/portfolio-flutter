import 'package:flutter/material.dart';
import 'package:portfolio/utils/theme_model.dart';
import 'package:provider/provider.dart';

Widget designedBy() {
  return Consumer(
    builder: (context, ThemeModel themeNotifier, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(
              //   width: 30,
              // ),
              const Text(
                "Designed By",
                style: TextStyle(fontSize: 25, fontFamily: 'mine'),
              ),
              Image.asset(
                "assets/heart.gif",
                height: 55,
              ),
            ],
          ),
          const Text(
            "Anand Suthar",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "A Flutter",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/icons/flutter.png",
                height: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Dev",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright_sharp,
                color: themeNotifier.isDark ? Colors.white : Colors.black,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("COPYRIGHTS. ALL RIGHTS RESERVED.")
            ],
          )
        ],
      );
    },
  );
}
