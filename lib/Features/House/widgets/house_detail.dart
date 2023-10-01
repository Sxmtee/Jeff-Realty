import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/details_card.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseDetail extends StatelessWidget {
  final House house;
  const HouseDetail({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetailsCard(
          heading: "Price",
          detail: house.attributes.price,
        ),
        DetailsCard(
          heading: "Status",
          detail: house.attributes.status,
        ),
        DetailsCard(
          heading: "Title",
          detail: house.attributes.title,
        ),
        DetailsCard(
          heading: "Bedroom",
          detail: house.attributes.bedroom,
        ),
        DetailsCard(
          heading: "Bathroom",
          detail: house.attributes.bathroom,
        ),
        DetailsCard(
          heading: "Street Name",
          detail: house.attributes.streetName,
        ),
        DetailsCard(
          heading: "Landmark",
          detail: house.attributes.landmark,
        ),
        DetailsCard(
          heading: "L.G.A",
          detail: house.attributes.lga,
        ),
        DetailsCard(
          heading: "City",
          detail: house.attributes.city,
        ),
        DetailsCard(
          heading: "State",
          detail: house.attributes.state,
        ),
      ],
    );
  }
}
