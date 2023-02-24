import 'package:arqontac_app/src/utils/theme/widget_themes/app_elevated_button_theme.dart';
import 'package:arqontac_app/src/utils/theme/widget_themes/app_outlined_button_theme.dart';
import 'package:arqontac_app/src/utils/theme/widget_themes/app_text_field_theme.dart';
import 'package:arqontac_app/src/utils/theme/widget_themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    textTheme: AppTextTheme.light,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: AppElevatedButtonTheme.light,
    outlinedButtonTheme: AppOutlinedButtonTheme.light,
    inputDecorationTheme: AppTextFieldTheme.light,
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    primarySwatch: Colors.amber,
    brightness: Brightness.dark,
    textTheme: AppTextTheme.dark,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: AppElevatedButtonTheme.dark,
    outlinedButtonTheme: AppOutlinedButtonTheme.dark,
    inputDecorationTheme: AppTextFieldTheme.dark,
  );
}
