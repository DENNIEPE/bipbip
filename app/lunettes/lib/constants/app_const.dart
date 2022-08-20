import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lunettes/config/size_config.dart';
import 'dart:ui' as ui;

//all global variables

class Constants {
  static String appName = 'App Name Vehicle';
  static String appNamePassenger = 'App Name Passenger';

  static String API_HOST =
      'http://192.168.1.218:3000/'; // change to your API Host

  //Text sizes
  static double textSizeTitle = 2.5 * SizeConfig.textMultiplier;
  static double textSizeHuge = 2.25 * SizeConfig.textMultiplier;
  static double textSizeBig = 2 * SizeConfig.textMultiplier;
  static double textSizeMedium = 1.75 * SizeConfig.textMultiplier;
  static double textSizeSmall = 1.5 * SizeConfig.textMultiplier;
  static double textSizeTiny = 1.25 * SizeConfig.textMultiplier;

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xffbe1522);
  static Color darkAccent = Color(0xff73060F);
  static Color highlightColor = Color(0xff15BEB1);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;
  static Color fireBrick = Color(0xffbe1522);
  static Color darkGray = Color(0xff585858);
  static Color tiffanyBlue = Color(0xff0E857B);
  static Color frenchBlue = Color(0xff1576BE);
  static Color palePink = Color(0xffFBD7DA);
  static Color darkRed = Color(0xff73060F);
  static Color lightGreen = Color(0xff15bf3d);
  static Color lightGray = Color(0xffbdbcbc);
  static Color darkGray2 = Color(0xff2E2E2E);

  // Fonts
  static String arial = 'Arial';
  static String roboto = 'Roboto';

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: darkAccent),
  );

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightAccent,
    accentColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: lightPrimary),
  );

  static final TextStyle appBarTitle = TextStyle(
    color: darkRed,
    fontSize: 4.5 * SizeConfig.widthMultiplier,
    fontWeight: FontWeight.w700,
    fontFamily: Constants.roboto,
  );
}
