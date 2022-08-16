import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget socialIcons(BuildContext context, bool isDark) {
  return Row(
    children: [
      IconButton(
          onPressed: () async {
            final Uri url = Uri.parse('https://www.instagram.com/_anu_956/');
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
          },
          icon: Image.asset(
            "assets/icons/insta.png",
            height: 24,
          )),
      const SizedBox(
        width: 20,
      ),
      IconButton(
          onPressed: () async {
            final Uri url = Uri.parse('https://www.facebook.com/ad956');
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
          },
          icon: Image.asset(
            "assets/icons/fb.png",
            height: 24,
          )),
      const SizedBox(
        width: 20,
      ),
      IconButton(
          onPressed: () async {
            // final Uri url =
            //     Uri.parse('https://www.instagram.com/_anu_956/');
            // if (!await launchUrl(url)) {
            //   throw 'Could not launch $url';
            // }

            SnackBar snackBar =
                const SnackBar(content: Text("Kon hai...Twiter to ;("));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: Image.asset(
            "assets/icons/tweet.png",
            height: 24,
          )),
      const SizedBox(
        width: 20,
      ),
      IconButton(
          onPressed: () async {
            final Uri url = Uri.parse('https://github.com/ad956');
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
          },
          icon: isDark
              ? Image.asset(
                  "assets/icons/git.png",
                  height: 24,
                )
              : Image.asset(
                  "assets/icons/gitDark.png",
                  height: 24,
                )),
    ],
  );
}
