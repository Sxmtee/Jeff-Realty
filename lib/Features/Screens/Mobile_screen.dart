import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/Property/Contact_screen.dart';
import 'package:jeffrealty/Features/Property/Houses_screen.dart';
import 'package:jeffrealty/Features/Property/Land_screen.dart';
import 'package:jeffrealty/Features/SideMenu/screens/sidemenu.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  List<Widget> items = [
    const HousesScreen(),
    const LandScreen(),
    const ContactScreen(),
  ];
  bool isSideMenuClosed = true;

  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 0) {
          setState(() {
            currentIndex = 0;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: isSideMenuClosed
            ? Theme.of(context).bottomNavigationBarTheme.backgroundColor
            : AppColors.darkButton,
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              width: 288,
              left: isSideMenuClosed ? -288 : 0,
              child: const SideMenu(),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(
                  animation.value - 30 * animation.value * pi / 180,
                ),
              child: Transform.translate(
                offset: Offset(
                  animation.value * 265,
                  0,
                ),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: items[currentIndex],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    if (isSideMenuClosed) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }
                    setState(() {
                      isSideMenuClosed = !isSideMenuClosed;
                    });
                  },
                  child: isSideMenuClosed
                      ? const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/jefflogo2.png",
                          ),
                        )
                      : const CircleAvatar(
                          child: Icon(
                            Icons.close,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeIndex: currentIndex,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          activeColor: AppColors.primaryColor,
          inactiveColor: Theme.of(context).iconTheme.color!,
          elevation: 20,
          shadow: const Shadow(color: AppColors.black),
          leftCornerRadius: 25,
          rightCornerRadius: 25,
          splashColor: AppColors.primaryColor,
          splashSpeedInMilliseconds: 500,
          gapLocation: GapLocation.none,
          icons: const [
            Icons.houseboat_rounded,
            Icons.landscape_rounded,
            Icons.contact_page_rounded,
          ],
        ),
      ),
    );
  }
}
