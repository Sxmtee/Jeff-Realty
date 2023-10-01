import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class DetailsCard extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Color borderColor;
  final String heading;
  final String detail;
  const DetailsCard({
    super.key,
    this.height = 50,
    this.width = double.infinity,
    this.color = Colors.transparent,
    this.borderColor = AppColors.button,
    required this.heading,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: const TextStyle(color: AppColors.textColor),
          ),
          Text(
            detail,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
