import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

// ignore: camel_case_types, must_be_immutable
class progressBar extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final language;
  // ignore: prefer_typing_uninitialized_variables
  final per;
  Color col;
  Image img;
  progressBar(
      {Key? key, this.language, this.per, required this.img, required this.col})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _progressBarState createState() => _progressBarState();
}

// ignore: camel_case_types
class _progressBarState extends State<progressBar> {
  // ignore: unused_field
  double _currentValue = 0;

  // ignore: non_constant_identifier_names
  Progressor() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _currentValue += 0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Color val = widget.col;
    // ignore: unused_local_variable
    Image img = widget.img;
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600 ? true : false;

      return Padding(
        padding: isMobile
            ? const EdgeInsets.all(12)
            : const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.centerStart,
                child: Row(children: [
                  widget.img,
                  const SizedBox(
                    width: 10,
                  ),
                  Text(widget.language),
                  // Text(widget.per.toString())
                ])), //
            const SizedBox(
              height: 10,
            ),
            FAProgressBar(
              currentValue: widget.per,
              size: 5,
              maxValue: 100,
              // changeColorValue: 60,
              // changeProgressColor: Colors.pink,
              backgroundColor: Colors.white,
              progressColor: val,
              animatedDuration: const Duration(milliseconds: 300),
              // direction: Axis.horizontal,
              // verticalDirection: VerticalDirection.up,
              // displayText: '%',
              // formatValueFixed: 2,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    });
  }
}
