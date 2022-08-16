import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/work_card.dart';
import 'package:provider/provider.dart';
import '../utils/theme_model.dart';

class MyWork extends StatefulWidget {
  const MyWork({Key? key}) : super(key: key);

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  // late List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return LayoutBuilder(builder: ((context, constraints) {
        final bool isMobile = constraints.maxWidth < 600 ? true : false;
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "my work",
                    style: TextStyle(
                      fontFamily: 'mine',
                      fontSize: isMobile ? 24 : 45,
                    ),
                  )),
              SizedBox(
                height: isMobile ? 380 : 300,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  // controller: pg,
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    workCard(context, isMobile, 0),
                  ],
                ),
              )
            ],
          ),
        );
      }));
    });
  }
}
