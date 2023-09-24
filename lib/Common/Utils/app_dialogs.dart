import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

class AppDialogs extends StatelessWidget {
  final String titleText;
  final String contentText;
  final String commandText;
  final VoidCallback commandPress;
  const AppDialogs({
    super.key,
    required this.titleText,
    required this.contentText,
    required this.commandText,
    required this.commandPress,
  });

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);
    Color? containerColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[900]
        : AppColors.backgroundWhite;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: Sizes.sHeight * 30,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(contentText),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: AppColors.textColor),
                  ),
                ),
                SizedBox(
                  width: Sizes.sWidth * 2.77,
                ),
                TextButton(
                  onPressed: commandPress,
                  child: Text(
                    commandText,
                    style: const TextStyle(color: AppColors.textColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
