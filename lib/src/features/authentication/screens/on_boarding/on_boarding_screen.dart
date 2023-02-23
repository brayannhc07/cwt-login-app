import 'package:arqontac_app/src/constants/colors.dart';
import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:arqontac_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:arqontac_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: onBoardingImage1,
              title: onBoardingTitle1,
              subtitle: onBoardingSubtitle1,
              counterText: onBoardingCounter1,
              bgColor: onBoardingPage1Color,
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: onBoardingImage2,
              title: onBoardingTitle2,
              subtitle: onBoardingSubtitle2,
              counterText: onBoardingCounter2,
              bgColor: onBoardingPage2Color,
              height: size.height)),
      OnBoardingPageWidget(
          model: OnBoardingModel(
              image: onBoardingImage3,
              title: onBoardingTitle3,
              subtitle: onBoardingSubtitle3,
              counterText: onBoardingCounter3,
              bgColor: onBoardingPage3Color,
              height: size.height)),
    ];

    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => OnBoardingController(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _SlidePages(pages: pages),
            const _NextPageButton(),
            const _SkipButton(),
            _PagesIndicator(pagesCount: pages.length)
          ],
        ),
      ),
    );
  }
}

class _SlidePages extends StatelessWidget {
  final List<Widget> pages;

  const _SlidePages({Key? key, required this.pages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnBoardingController>(context);
    return LiquidSwipe(
      pages: pages,
      liquidController: controller.liquidController,
      onPageChangeCallback: (activePageIndex) {
        controller.currentPage = activePageIndex;
      },
      slideIconWidget: const Icon(Icons.arrow_back_ios),
      enableSideReveal: true,
    );
  }
}

class _NextPageButton extends StatelessWidget {
  const _NextPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnBoardingController>(context);

    return Positioned(
        bottom: 60,
        child: OutlinedButton(
          onPressed: () => controller.nextPage(),
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration:
                const BoxDecoration(color: darkColor, shape: BoxShape.circle),
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ));
  }
}

class _SkipButton extends StatelessWidget {
  const _SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnBoardingController>(context);

    return Positioned(
        top: 50,
        right: 20,
        child: TextButton(
            onPressed: () => controller.liquidController.jumpToPage(page: 2),
            child: const Text("Skip", style: TextStyle(color: Colors.grey))));
  }
}

class _PagesIndicator extends StatelessWidget {
  final int pagesCount;

  const _PagesIndicator({Key? key, required this.pagesCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnBoardingController>(context);

    return Positioned(
        bottom: 10,
        child: AnimatedSmoothIndicator(
          activeIndex: controller.currentPage,
          count: pagesCount,
          effect:
              const WormEffect(activeDotColor: Color(0xff272727), dotHeight: 5),
        ));
  }
}
