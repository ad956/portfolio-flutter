import 'package:flutter/material.dart';
import 'package:portfolio/utils/theme_model.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/skill_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setPathUrlStrategy();
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            builder: (context, child) => ResponsiveWrapper.builder(
              child,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                // const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                // const ResponsiveBreakpoint.resize(600, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(600, name: TABLET),
                const ResponsiveBreakpoint.resize(800,
                    name: TABLET), // autoscale
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP), //rezize
              ],
            ),
            debugShowCheckedModeBanner: false,
            home: const LoginPage(),
            // themeMode: ThemeMode.light,
            theme: themeNotifier.isDark
                ? MyTheme.darkTheme(context)
                : MyTheme.lightTheme(context), //MyTheme.lightTheme(context),
            // darkTheme: MyTheme.darkTheme(context),

            initialRoute: "/home", //
            routes: {
              // "/": (context) => LoginPage(),
              MyRoutes.loginRoute: (context) => const LoginPage(),
              MyRoutes.homeRoute: (context) => const HomePage(),
              MyRoutes.skillsRoute: (context) => const SkillsPage(),
            },
          );
        }));
  }
}
