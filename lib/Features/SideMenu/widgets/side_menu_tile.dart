import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

class SideMenuTile extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  final String text;
  final Color? color;
  const SideMenuTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
    this.color = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return ListTile(
      onTap: onTap,
      leading: SizedBox(
        height: Sizes.sHeight * 4.25,
        width: Sizes.sWidth * 9.44,
        child: icon,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
