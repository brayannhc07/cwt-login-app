import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final light = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          foregroundColor: secondaryColor,
          side: const BorderSide(color: secondaryColor),
          padding: const EdgeInsets.symmetric(vertical: buttonHeight)));

  static final dark = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          foregroundColor: whiteColor,
          side: const BorderSide(color: whiteColor),
          padding: const EdgeInsets.symmetric(vertical: buttonHeight)));
}
