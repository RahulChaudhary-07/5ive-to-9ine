import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getMaterialApp(context) {
  return ThemeData(
    textTheme: GoogleFonts.playfairDisplayTextTheme(Theme.of(context).textTheme).copyWith(
      headline6: GoogleFonts.playfairDisplay(
        textStyle: TextStyle(fontWeight: FontWeight.w500),
      ),
    ),
  );
}
