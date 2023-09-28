import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Widgets/details_card.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseDetail extends StatelessWidget {
  final House house;
  const HouseDetail({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return ListView(
      children: [
        DetailsCard(
          heading: "Title",
          detail: house.attributes.title,
        ),
      ],
    );
  }
}
