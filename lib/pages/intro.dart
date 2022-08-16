import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/current_device.dart';
import 'package:portfolio/widgets/hello_world_aligner.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/theme_model.dart';
import '../widgets/about_anim.dart';
import '../widgets/i_am_anim.dart';
import '../widgets/social_icons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600 ? true : false;
      String currentDevice = currentdevice(context);

      return Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "HEY THERE !",
                  style: TextStyle(
                    fontFamily: GoogleFonts.rye().fontFamily,
                    fontStyle: FontStyle.italic,
                    fontSize: isMobile ? 15 : 18, // change the device one
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                nameTyper(currentDevice),
                SizedBox(
                  height: isMobile ? 50 : 10, //10
                ),
                aboutAnim1(currentDevice),
                aboutAnim2(currentDevice),
                const SizedBox(
                  height: 15,
                ),
                socialIcons(context, themeNotifier.isDark),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'anandsuthar956@gmail.com',
                        );

                        launchUrl(emailLaunchUri);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple),
                        minimumSize:
                            MaterialStateProperty.all(const Size(45, 45)),
                      ),
                      child: const Text("Contact me"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      onPressed: () async {
                        const url =
                            'https://drive.google.com/file/d/1gUvx1fvYepofCBKDY2udRVEX0-Q2rNt-/view';
                        launchUrl(Uri.parse(url));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple),
                        minimumSize:
                            MaterialStateProperty.all(const Size(45, 45)),
                      ),
                      icon: const Icon(
                        CupertinoIcons.arrow_down_doc,
                        size: 20,
                      ),
                      label: const Text("My Resume"),
                    )
                  ],
                )
              ],
            ),
            helloWorldAlign(currentDevice)
          ]),
        );
      });
    });
  }
}

// ignore: unused_element

// ignore: unused_element


