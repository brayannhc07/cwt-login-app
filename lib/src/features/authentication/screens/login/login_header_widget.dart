import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          welcomeScreenImage,
          height: size.height * 0.2,
        ),
        Text(loginTitle, style: Theme.of(context).textTheme.displayLarge),
        Text(loginSubtitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
