import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Widgets/details_card.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandDetail extends StatelessWidget {
  final Land land;
  const LandDetail({super.key, required this.land});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return ListView(
      children: [
        DetailsCard(
          heading: "Title",
          detail: land.attributes.title,
        ),
      ],
    );
  }
}
