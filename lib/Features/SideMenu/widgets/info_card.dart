import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/jefflogo2.png"),
      ),
      title: Text(
        "Jeff Realty & Trades Solution",
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
