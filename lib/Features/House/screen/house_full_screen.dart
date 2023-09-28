import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/House/screen/house_tab_screen.dart';
import 'package:jeffrealty/Features/House/widgets/house_carousel_screen.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseFullScreen extends StatelessWidget {
  static const routeName = "/House-full-screen";
  final House house;
  const HouseFullScreen({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          "House Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            HouseCarousel(house: house),
            Expanded(
              child: HouseTabScreen(house: house),
            )
          ],
        ),
      ),
    );
  }
}
