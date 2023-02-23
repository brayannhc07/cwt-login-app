import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SvgPicture.asset(
          model.image,
          height: model.height * 0.4,
        ),
        Column(
          children: [
            Text(model.title, style: Theme.of(context).textTheme.displaySmall),
            Text(
              model.subtitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(model.counterText,
            style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(
          height: 50,
        )
      ]),
    );
  }
}
