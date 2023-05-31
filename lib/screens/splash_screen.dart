import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app_c8/home_layout/home_layout.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splah-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/splash_screen.png');
  }
}
