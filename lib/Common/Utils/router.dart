import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/error_screen.dart';
import 'package:jeffrealty/Common/Widgets/page_router.dart';
import 'package:jeffrealty/Features/House/screen/house_full_screen.dart';
import 'package:jeffrealty/Features/Land/screen/land_full_screen.dart';
import 'package:jeffrealty/Features/SideMenu/screens/about_screen.dart';
import 'package:jeffrealty/Features/SideMenu/screens/purchase_guide_screen.dart';
import 'package:jeffrealty/Model/house_model.dart';
import 'package:jeffrealty/Model/land_model.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AboutScreen.routeName:
      return pageRouter(child: const AboutScreen());
    case PurchaseGuide.routeName:
      return pageRouter(child: const PurchaseGuide());
    case HouseFullScreen.routeName:
      final house = settings.arguments as House;
      return pageRouter(
        child: HouseFullScreen(house: house),
      );
    case LandFullScreen.routeName:
      final land = settings.arguments as Land;
      return pageRouter(
        child: LandFullScreen(lands: land),
      );
    default:
      return pageRouter(
        child: const Scaffold(
          body: ErrorScreen(
            error: "This Page Does Not Exist",
          ),
        ),
      );
  }
}
