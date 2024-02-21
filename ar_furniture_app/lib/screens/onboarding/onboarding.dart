import 'package:ar_furniture_app/screens/onboarding/secondOnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  int currentPage = 0;
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              SecondOnBoardingScreen(size: size),
              Container(
                color: const Color(0xfffddcdf),
              ),
              Container(color: const Color(0xff242320)),
            ],
            liquidController: controller,
          ),
          Positioned(
            bottom: 57,
            left: 30,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 1),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            right: 50,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 2,
              effect: const WormEffect(
                  activeDotColor: Color(0xff272727), dotHeight: 5.0),
            ),
          )
        ],
      ),
    );
  }

  OnPageChangeCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}
