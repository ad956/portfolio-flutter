import 'package:flutter/material.dart';
import 'package:portfolio/utils/theme_model.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/social_icons.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 600 ? true : false;
        return Consumer(
          builder: ((context, ThemeModel themeNotifier, child) {
            bool isDark = themeNotifier.isDark;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          "Contact Me",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: 'mine',
                              color: isDark
                                  ? Colors.greenAccent
                                  : MyTheme.solidBlack),
                        ),
                      ),
                      const Text(
                        "Say Hello",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Email : anandsuthar956@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Phone : +9170976784359",
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Find me in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Vadodara, Gujarat",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Social Networks",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      socialIcons(context, themeNotifier.isDark)
                    ],
                  ),
                  SizedBox(
                    height: isMobile ? 200 : 400,
                    width: isMobile ? 170 : 300,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/contact.jpg",
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }
}


// Widget contact() {
 
// }
