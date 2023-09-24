import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class ButtonText extends StatelessWidget {
  final VoidCallback? onpressed;
  final double height;
  final double width;
  final Color color;
  final Color borderColor;
  final String text;
  final TextStyle? style;
  const ButtonText({
    super.key,
    required this.onpressed,
    this.height = 64,
    this.width = double.infinity,
    this.color = AppColors.button,
    this.borderColor = Colors.transparent,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
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
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
