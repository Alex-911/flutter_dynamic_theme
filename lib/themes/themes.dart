import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme {
  redDark,
  redLight,
  blueLight,
  blueDark,
  greenDark,
  greenLight,
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.redDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    textTheme: GoogleFonts.dancingScriptTextTheme(),
  ),
  AppTheme.redLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    textTheme: GoogleFonts.oswaldTextTheme(),
  ),
  AppTheme.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.indigo,
    primarySwatch: Colors.indigo,
    textTheme: GoogleFonts.ubuntuTextTheme(),
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.indigo,
    primarySwatch: Colors.indigo,
    textTheme: GoogleFonts.irishGroverTextTheme(),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
    textTheme: GoogleFonts.architectsDaughterTextTheme(),
  ),
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
    textTheme: GoogleFonts.permanentMarkerTextTheme(),
  ),
};
