import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class Loader extends StatelessWidget {
  final double radius;
  final Color color;
  const Loader({
    super.key,
    this.radius = 40,
    this.color = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFoldingCube(
        color: color,
        size: radius,
      ),
    );
  }
}
