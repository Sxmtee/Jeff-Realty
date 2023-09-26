import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: statusBar(
        context: context,
        title: const Text(
          "Contact us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icon-deal.png",
                  color: AppColors.primaryColor,
                  height: Sizes.sHeight * 10,
                  width: Sizes.sWidth * 20,
                ),
                const Text(
                  "Let's start a conversation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
