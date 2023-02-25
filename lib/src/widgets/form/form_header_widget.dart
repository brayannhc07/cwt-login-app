import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imageColor,
    this.heightBetween,
    this.imageHeight = 0.2,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SvgPicture.asset(
          image,
          height: size.height * imageHeight,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(title, style: Theme.of(context).textTheme.displayLarge),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
