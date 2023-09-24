import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeffrealty/Common/Utils/app_dialogs.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/SideMenu/widgets/info_card.dart';
import 'package:jeffrealty/Features/SideMenu/widgets/side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Sizes().init(context);
    return Container(
      height: Sizes.screenHeight,
      width: Sizes.sWidth * 80,
      color: AppColors.darkButton,
      child: Column(
        children: [
          SizedBox(
            height: Sizes.sHeight * 15,
          ),
          const InfoCard(),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Divider(
              height: 1,
            ),
          ),
          SideMenuTile(
            onTap: () {},
            icon: const Icon(
              Icons.info_rounded,
              color: AppColors.white,
            ),
            text: "About",
          ),
          SideMenuTile(
            onTap: () {},
            icon: const Icon(
              Icons.route_rounded,
              color: AppColors.white,
            ),
            text: "Lengora Business",
          ),
          SideMenuTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AppDialogs(
                    titleText: "Exit app",
                    contentText: "Exit from Jeff Realty?",
                    commandText: "Exit",
                    commandPress: () => SystemNavigator.pop(),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.logout,
              color: AppColors.white,
            ),
            text: "Exit app",
          ),
        ],
      ),
    );
  }
}
