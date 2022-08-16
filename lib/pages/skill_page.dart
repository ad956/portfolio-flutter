import 'package:flutter/material.dart';
import 'package:portfolio/pages/progresss.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      final bool isMobile = constraints.maxWidth < 600 ? true : false;

      return Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Skills",
              style: TextStyle(
                  fontSize: isMobile ? 24 : 45,
                  color: Colors.deepOrangeAccent,
                  fontFamily: 'mine'),
            ),
          ),
        ),
        progressBar(
          language: "Android",
          per: 50.0,
          col: Colors.greenAccent.shade400,
          img: Image.asset(
            "assets/icons/android.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "Flutter",
          per: 72.0,
          col: Colors.blue.shade600,
          img: Image.asset(
            "assets/icons/flutter.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "JavaScript",
          per: 80.0,
          col: Colors.yellowAccent.shade400,
          img: Image.asset(
            "assets/icons/js.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "Java",
          per: 70.0,
          col: Colors.orange.shade900,
          img: Image.asset(
            "assets/icons/java.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "React Js",
          per: 36.0,
          col: Colors.blue.shade300,
          img: Image.asset(
            "assets/icons/react.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "Node Js",
          per: 28.0,
          col: Colors.greenAccent.shade400,
          img: Image.asset(
            "assets/icons/node.png",
            height: 21,
          ),
        ),
        progressBar(
          language: "MySQL",
          per: 72.0,
          col: const Color.fromARGB(255, 12, 55, 197),
          img: Image.asset(
            "assets/icons/sql.png",
            height: 21,
          ),
        ),
      ]);
    }));
  }
}
