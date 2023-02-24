import 'package:arqontac_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();

  static InputDecorationTheme light = const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: secondaryColor,
      floatingLabelStyle: TextStyle(color: secondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: secondaryColor)));

  static InputDecorationTheme dark = const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: primaryColor,
      floatingLabelStyle: TextStyle(color: primaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: primaryColor)));
}
