import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/loader.dart';
import 'package:jeffrealty/Features/Screens/Mobile_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);
    return Stack(
      children: [
        AnimatedSplashScreen(
          backgroundColor: AppColors.black,
          duration: 6000,
          splash: Container(
            height: Sizes.sHeight * 10,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/jefflogo2.png"),
              ),
            ),
          ),
          nextScreen: const MobileScreen(),
          splashTransition: SplashTransition.scaleTransition,
        ),
        Positioned(
          bottom: Sizes.sHeight * 5,
          left: Sizes.sWidth * 5.5556,
          right: Sizes.sWidth * 5.5556,
          child: const Loader(),
        ),
      ],
    );
  }
}
