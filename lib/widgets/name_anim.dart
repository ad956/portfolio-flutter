import 'package:flutter/material.dart';

TweenAnimationBuilder<double> nameAnim(bool dd) {
  return TweenAnimationBuilder(
    // ignore: sort_child_properties_last
    child: dd
        ? const Text(
            "Ad", // "★Añ@nD \$úth@R ❤️",
            style: TextStyle(
              fontSize: 25,
              // color: Color.fromRGBO(244, 243, 239, 2),
              fontFamily: 'mine',
            ),
          )
        : const Text(
            "Añ@nD \$úth@R", // "★Añ@nD \$úth@R ❤️",
            style: TextStyle(
                fontSize: 29,
                // color: Color.fromRGBO(244, 243, 239, 2),
                fontFamily: 'mine',
                wordSpacing: 10),
          ),
    tween: Tween<double>(begin: 0, end: 1),
    duration: const Duration(seconds: 5),
    builder: (context, double value, Widget? child) {
      return Opacity(
        opacity: value,
        child: child,
      );
    },
  );
}
