import 'package:flutter/material.dart';
import 'package:portfolio/utils/current_device.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:provider/provider.dart';

import '../utils/theme_model.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String currentDevice = currentdevice(context);

    double imageHeight;
    double imageWidth;
    double gap;
    double textSize;
    double textSize2;

    if (currentDevice == 'mobile') {
      imageHeight = 250;
      imageWidth = 250;
      gap = 30;
      textSize = 21;
      textSize2 = 7;
    } else if (currentDevice == 'tab') {
      imageHeight = 250;
      imageWidth = 250;
      gap = 60;
      textSize = 31;
      textSize2 = 10;
    } else if (currentDevice == 'other') {
      imageHeight = 350;
      imageWidth = 350;
      gap = 60;
      textSize = 45;
      textSize2 = 16;
    } else if (currentDevice == 'other1') {
      imageHeight = 350;
      imageWidth = 350;
      gap = 60;
      textSize = 45;
      textSize2 = 16;
    } else if (currentDevice == 'other2') {
      imageHeight = 450;
      imageWidth = 450;
      gap = MediaQuery.of(context).size.width >= 1000 &&
              MediaQuery.of(context).size.width <= 1100
          ? 40
          : 100;
      textSize = 80;
      textSize2 = 16;
    } else {
      imageHeight = 500;
      imageWidth = 500;
      gap = 300;
      textSize = 100;
      textSize2 = 20;
    }

    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return LayoutBuilder(builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 600 ? true : false;

        return Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              SizedBox(
                  height: imageHeight, //isMobile ? 250 : 500,
                  width: imageWidth, //isMobile ? 250 : 500,
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/bike.gif"),
                  )),
              SizedBox(
                width: gap, //isMobile ? 30 : 300,
              ),
              Column(
                children: [
                  Text(
                    "ABOUT ME",
                    style: TextStyle(
                      fontSize: textSize, //isMobile ? 21 : 100,
                      color: themeNotifier.isDark
                          ? Colors.greenAccent.shade700
                          : MyTheme.solidBlack,
                      fontFamily: 'mine',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "I am currently a student pursuing my masters ",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: textSize2, //isMobile ? 7 : 20,
                        color: themeNotifier.isDark
                            ? MyTheme.darkWhiteColor
                            : MyTheme.solidBlack),
                  ),
                  Text(
                    "in computer application from Parul University ❤️ Vadodara",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: textSize2, //isMobile ? 7 : 20,
                        color: themeNotifier.isDark
                            ? MyTheme.darkWhiteColor
                            : MyTheme.solidBlack),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/flutter.png",
                        height: isMobile ? 21 : 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/icons/android.png",
                        height: isMobile ? 21 : 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/icons/java.png",
                        height: isMobile ? 21 : 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/icons/js.png",
                        height: isMobile ? 21 : 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/icons/react.png",
                        height: isMobile ? 21 : 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/icons/sql.png",
                        height: isMobile ? 21 : 30,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      });
    });
  }
}
