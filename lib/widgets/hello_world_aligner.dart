import 'package:flutter/cupertino.dart';

import 'hello_world_anim.dart';

Widget helloWorldAlign(String currentDevice) {
  double sizeHeight;
  double sizeWidth;
  double sizeGap;

  if (currentDevice == 'mobile') {
    sizeHeight = 300;
    sizeWidth = 300;
    sizeGap = 50;
  } else if (currentDevice == 'tab') {
    sizeHeight = 400;
    sizeWidth = 400;
    sizeGap = 40;
  } else if (currentDevice == 'other') {
    sizeHeight = 400;
    sizeWidth = 400;
    sizeGap = 40;
  } else {
    sizeHeight = 340;
    sizeWidth = 500;
    sizeGap = 80;
  }

  // bool isMobile = true;
  return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: SizedBox(
          height: sizeHeight,
          width: sizeWidth,
          child: Column(
            children: [
              SizedBox(
                height: sizeGap,
              ),
              codeAnim(currentDevice)
            ],
          )));
}


// ORIGINAL ONE DO  NOT TOUCH
// Align(
      // alignment: AlignmentDirectional.centerEnd,
      // child: SizedBox(
      //     height: isMobile ? 300 : 340,
      //     width: isMobile ? 300 : 500,
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: isMobile ? 50 : 80,
      //         ),
      //         codeAnim(currentDevice)
      //       ],
      //     )));