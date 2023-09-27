import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);
    Color? containerColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[900]
        : Colors.grey[500];

    return Container(
      margin: const EdgeInsets.all(25),
      height: Sizes.sHeight * 25,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: containerColor!,
          width: 1,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "No. 7 O'Conner street Presidential Road, Enugu.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "09064088365",
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "08120908844",
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
