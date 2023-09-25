import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/error_screen.dart';
import 'package:jeffrealty/Common/Widgets/page_router.dart';
import 'package:jeffrealty/Features/SideMenu/screens/about_screen.dart';
import 'package:jeffrealty/Features/SideMenu/screens/purchase_guide_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AboutScreen.routeName:
      return pageRouter(child: const AboutScreen());
    case PurchaseGuide.routeName:
      return pageRouter(child: const PurchaseGuide());
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
