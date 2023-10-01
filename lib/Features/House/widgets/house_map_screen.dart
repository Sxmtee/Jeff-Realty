import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/loader.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseMapScreen extends StatelessWidget {
  final House house;
  const HouseMapScreen({super.key, required this.house});

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
