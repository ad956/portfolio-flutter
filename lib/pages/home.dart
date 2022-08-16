import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_us.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/deisgnedBypage.dart';
import 'package:portfolio/pages/intro.dart';
import 'package:portfolio/pages/my_works.dart';
import 'package:portfolio/pages/skill_page.dart';
import 'package:portfolio/utils/theme_model.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'dart:ui' as ui;
import '../widgets/name_anim.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle hedaerStyle = const TextStyle(
    fontSize: 21,
    color: Colors.amber,
  );
  // final dummyList = List.generate(10, (index) => ProductModel.products[0]);
  // final urli = ""
  @override
  void initState() {
    super.initState();
    // loadData();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  // = ThemeModel();
  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;
  bool darkTrue = false;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return LayoutBuilder(builder: (context, constraints) {
        final bool deviceWidth = constraints.maxWidth < 600 ? true : false;

        return Scaffold(
          backgroundColor: themeNotifier.isDark
              ? MyTheme.darkTheme(context).backgroundColor
              : MyTheme.lightTheme(context).backgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: nameAnim(deviceWidth),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    TopBar(1, "Home"),
                    SizedBox(
                      width: deviceWidth ? 1 : 20,
                    ),
                    TopBar(2, "About"),
                    SizedBox(
                      width: deviceWidth ? 1 : 20,
                    ),
                    TopBar(3, "Skills"),
                    SizedBox(
                      width: deviceWidth ? 1 : 20,
                    ),
                    TopBar(4, "My Work"),
                    SizedBox(
                      width: deviceWidth ? 1 : 20,
                    ),
                    TopBar(5, "Contact"),
                    SizedBox(
                      width: deviceWidth ? 1 : 20,
                    ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () async {
                          themeNotifier.isDark
                              ? themeNotifier.isDark = false
                              : themeNotifier.isDark = true;
                        },
                        icon: themeNotifier.isDark
                            ? const Icon(
                                CupertinoIcons.sun_max_fill,
                                size: 22,
                                color: Colors.white,
                              )
                            : const Icon(
                                CupertinoIcons.moon_stars,
                                size: 22,
                                color: Colors.black,
                              ))
                  ],
                ),
              )
            ],
          ), // drawer: const MyDrawer(),
          body: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  item1(0),
                  item2(1),
                  item3(2),
                  item4(3),
                  item5(4),
                  item6(5)
                ],
              )),
        );
      });
    });
  }

  Widget item1(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const IntroPage(),
    );
  }

  Widget item2(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const Aboutus(),
    );
  }

  Widget item3(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const SkillsPage(),
    );
  }

  Widget item4(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const MyWork(),
    );
  }

  Widget item5(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const ContactPage(),
    );
  }

  Widget item6(int index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: const DesignedByPage(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget TopBar(int index, String text) {
    const TextStyle headerStyle = TextStyle(
      fontSize: 19,
      //color: Color.fromRGBO(244, 243, 239, 2),
    );

    const TextStyle headerStyleAfter = TextStyle(
      fontSize: 20,
      // wordSpacing: 20,
      color: Colors.deepPurple,
    );

    const TextStyle headerStyleMobile = TextStyle(
      fontSize: 18,
      //color: Color.fromRGBO(244, 243, 239, 2),
    );
    // ignore: unused_local_variable
    bool isTablet;
    bool isPhone;

    final double devicePixelRatio = ui.window.devicePixelRatio;
    final ui.Size size = ui.window.physicalSize;
    final double width = size.width;
    final double height = size.height;
    bool hovered = false;

    if (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
      isTablet = true;
      isPhone = false;
    } else if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
      isTablet = true;
      isPhone = false;
    } else {
      isTablet = false;
      isPhone = true;
    }
    if (isPhone) {
      return InkWell(
        mouseCursor: MouseCursor.uncontrolled,
        // hoverColor: Colors.deepPurple,
        // highlightColor: Colors.greenAccent,
        splashColor: Colors.yellowAccent.shade700,
        // customBorder: const ShapeBorder(height:100),
        borderRadius: BorderRadius.circular(23),
        onTap: () async {
          if (index == 1) {
            await controller.scrollToIndex(0,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 2) {
            await controller.scrollToIndex(1,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 3) {
            await controller.scrollToIndex(2,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 4) {
            await controller.scrollToIndex(4,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 5) {
            await controller.scrollToIndex(5,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Text(
            text,
            style: headerStyleMobile,
          ),
        ),
      );
    } else {
      return InkWell(
        mouseCursor: MouseCursor.uncontrolled,
        // hoverColor: Colors.deepPurple,
        // highlightColor: Colors.greenAccent,
        splashColor: Colors.yellowAccent.shade700,
        // customBorder: const ShapeBorder(height:100),
        borderRadius: BorderRadius.circular(33),
        onTap: () async {
          if (index == 1) {
            await controller.scrollToIndex(0,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 2) {
            await controller.scrollToIndex(1,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 3) {
            await controller.scrollToIndex(2,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 4) {
            await controller.scrollToIndex(4,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          } else if (index == 5) {
            await controller.scrollToIndex(5,
                duration: const Duration(milliseconds: 500),
                preferPosition: AutoScrollPosition.begin);
          }
        },
        onHover: ((value) {
          setState(() {
            hovered = value;
          });
        }),
        child: Text(
          text,
          style: hovered ? headerStyleAfter : headerStyle,
        ),
      );
    }
  }
}
