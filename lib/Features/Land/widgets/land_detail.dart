import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/details_card.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandDetail extends StatelessWidget {
  final Land land;
  const LandDetail({super.key, required this.land});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetailsCard(
          heading: "Price",
          detail: land.attributes.price,
        ),
        DetailsCard(
          heading: "Size",
          detail: "${land.attributes.landSize} SqFt",
        ),
        DetailsCard(
          heading: "Title",
          detail: land.attributes.title,
        ),
        DetailsCard(
          heading: "Street Name",
          detail: land.attributes.streetName,
        ),
        DetailsCard(
          heading: "Landmark",
          detail: land.attributes.landmark,
        ),
        DetailsCard(
          heading: "L.G.A",
          detail: land.attributes.lga,
        ),
        DetailsCard(
          heading: "City",
          detail: land.attributes.city,
        ),
        DetailsCard(
          heading: "State",
          detail: land.attributes.state,
        ),
      ],
    );
  }
}
