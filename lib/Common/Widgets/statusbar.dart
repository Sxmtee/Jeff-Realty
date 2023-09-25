import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

PreferredSizeWidget statusBar({
  required BuildContext context,
  required Widget title,
}) {
  Sizes().init(context);

  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: Sizes.sHeight * 8,
    elevation: 1.0,
    title: title,
    titleSpacing: 0.0,
  );
}
