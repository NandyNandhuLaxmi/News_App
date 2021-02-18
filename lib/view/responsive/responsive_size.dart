import 'package:flutter/material.dart';
import 'package:news/view/splash/splash.dart';
import 'package:responsive_framework/responsive_framework.dart';

class responsive extends StatefulWidget {
  @override
  _responsiveState createState() => _responsiveState();
}

class _responsiveState extends State<responsive> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1300,
          minWidth: 650,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(360, name: MOBILE),
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
