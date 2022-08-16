import 'package:flutter/material.dart';

String currentdevice(BuildContext context) {
  String str;
  final deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 600) {
    str = 'mobile';
  } else if (deviceWidth >= 600 && deviceWidth <= 840) {
    str = 'tab';
  } else if (deviceWidth > 840 && deviceWidth <= 875) {
    str = 'other';
  } else if (deviceWidth > 875 && deviceWidth <= 1000) {
    str = 'other1';
  } else if (deviceWidth > 1000 && deviceWidth <= 1450) {
    str = 'other2';
  } else {
    str = 'desk';
  }
  return str;
}
