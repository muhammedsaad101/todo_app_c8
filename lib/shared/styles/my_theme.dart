import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color primaryLightColor = Color(0xFF5D9CEC);
  static const Color primaryDarkColor = Color(0xFF5D9CEC);
  static const Color scaffoldBackgroundLightColor = Color(0xFFDFECDB);
  static const Color scffoldBackgroundDarkColor = Color(0xFF060E1E);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color greyColor = Color(0xFFC8C9CB);
  static const Color blueColor = Color(0xFF5D9CEC);
  static const Color greenColor = Color(0xFF61E757);
  static const Color blackColor = Color(0xFF363636);
  static const Color redColor = Color(0xFFEC4B4B);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    scaffoldBackgroundColor: scaffoldBackgroundLightColor,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primaryLightColor,
      ),
      bodySmall: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: whiteColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryLightColor,
      unselectedItemColor: greyColor,
      showSelectedLabels: true,
      showUnselectedLabels: false

    ),
    bottomAppBarTheme: BottomAppBarTheme(

    ),
  );
  static final ThemeData darkTheme = ThemeData();
}