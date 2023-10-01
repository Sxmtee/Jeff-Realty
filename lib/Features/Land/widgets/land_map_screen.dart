import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/loader.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandMapScreen extends StatelessWidget {
  final Land land;
  const LandMapScreen({super.key, required this.land});

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
