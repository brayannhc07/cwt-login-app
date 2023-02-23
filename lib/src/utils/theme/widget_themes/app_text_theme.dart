import 'package:arqontac_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme light = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28, fontWeight: FontWeight.bold, color: darkColor),
    displayMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: darkColor)),
    displaySmall: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: darkColor)),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: darkColor),
    titleLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: darkColor)),
    bodyLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: darkColor)),
    bodyMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: darkColor)),
  );

  static TextTheme dark = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28, fontWeight: FontWeight.bold, color: whiteColor),
    displayMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: whiteColor)),
    displaySmall: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: whiteColor)),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: whiteColor),
    titleLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: whiteColor)),
    bodyLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: whiteColor)),
    bodyMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: whiteColor)),
  );
}
