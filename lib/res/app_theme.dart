import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme({ColorScheme? colorScheme, bool isDark = false}) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: bgColor,
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
    canvasColor: secondaryColor,
  );
}
