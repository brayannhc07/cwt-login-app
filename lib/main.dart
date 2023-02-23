import 'package:arqontac_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:arqontac_app/src/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      darkTheme: AppTheme.dark,
      theme: AppTheme.light,
      themeMode: ThemeMode.system,
    );
  }
}
