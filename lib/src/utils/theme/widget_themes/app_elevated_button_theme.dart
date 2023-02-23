import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final light = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          foregroundColor: whiteColor,
          backgroundColor: secondaryColor,
          side: const BorderSide(color: secondaryColor),
          padding: const EdgeInsets.symmetric(vertical: buttonHeight)));

  static final dark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          foregroundColor: secondaryColor,
          backgroundColor: whiteColor,
          side: const BorderSide(color: whiteColor),
          padding: const EdgeInsets.symmetric(vertical: buttonHeight)));
}
