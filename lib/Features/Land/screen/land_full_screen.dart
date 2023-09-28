import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/Land/screen/land_tab_screen.dart';
import 'package:jeffrealty/Features/Land/widgets/land_carousel_screen.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandFullScreen extends StatelessWidget {
  static const routeName = "/Land-full-screen";
  final Land lands;
  const LandFullScreen({super.key, required this.lands});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          "Land Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            LandCarousel(lands: lands),
            Expanded(
              child: LandTabScreen(land: lands),
            )
          ],
        ),
      ),
    );
  }
}
