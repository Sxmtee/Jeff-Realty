import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Features/House/widgets/house_map_screen.dart';
import 'package:jeffrealty/Features/Land/widgets/land_detail.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandTabScreen extends StatelessWidget {
  final Land land;
  const LandTabScreen({super.key, required this.land});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const TabBar(
            indicatorColor: AppColors.button,
            labelColor: AppColors.button,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
            tabs: [
              Text("Details"),
              Text("Map"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LandDetail(land: land),
            const HouseMapScreen(),
          ],
        ),
      ),
    );
  }
}
