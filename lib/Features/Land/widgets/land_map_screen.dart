import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/loader.dart';

class LandMapScreen extends StatelessWidget {
  const LandMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "Coming soon",
              style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            const Loader(),
          ],
        ),
      ),
    );
  }
}
