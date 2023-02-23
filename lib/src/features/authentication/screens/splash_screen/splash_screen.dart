import 'package:animate_do/animate_do.dart';
import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:arqontac_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:arqontac_app/src/widgets/decorations/rounded_shape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(context,
          CupertinoPageRoute(builder: (context) => const WelcomeScreen()));
    });

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: SlideInLeft(
                delay: const Duration(milliseconds: 750),
                duration: const Duration(milliseconds: 3000),
                child: const RoundedShape(
                    height: 110, width: 110, color: primaryColor),
              )),
          Positioned(
              top: 120,
              left: defaultSize,
              child: FadeInLeft(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 2500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(appName,
                        style: Theme.of(context).textTheme.displaySmall),
                    Text(appTagLine,
                        style: Theme.of(context).textTheme.displayMedium)
                  ],
                ),
              )),
          Positioned(
              bottom: 140,
              child: FadeInUp(
                duration: const Duration(milliseconds: 3000),
                child: const Image(
                  image: AssetImage(splashImage),
                  width: 300,
                ),
              )),
          Positioned(
              bottom: 40,
              right: defaultSize,
              child: SlideInRight(
                delay: const Duration(milliseconds: 1000),
                duration: const Duration(milliseconds: 2000),
                child: Container(
                  width: splashContainerSize,
                  height: splashContainerSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor),
                ),
              )),
        ],
      ),
    );
  }
}
