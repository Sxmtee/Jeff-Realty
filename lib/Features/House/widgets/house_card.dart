import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseCard extends StatelessWidget {
  final House houses;
  const HouseCard({super.key, required this.houses});

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: Sizes.sHeight * 53,
        width: Sizes.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: Sizes.sHeight * 25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: CachedNetworkImageProvider(
                        houses.attributes.images.data.first.attributes.url,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    color: AppColors.textColor,
                    height: Sizes.sHeight * 3,
                    width: Sizes.sWidth * 20,
                    child: Center(
                      child: Text(
                        houses.attributes.status,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            Text(
              "NGN ${houses.attributes.price}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            Text(
              capitalizeFirstLetter(houses.attributes.title),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_sharp,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  width: Sizes.sWidth * 3,
                ),
                Text(
                  capitalizeFirstLetter(houses.attributes.streetName),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: Sizes.sWidth,
                ),
                Text(
                  capitalizeFirstLetter("${houses.attributes.city},"),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: Sizes.sWidth,
                ),
                Text(
                  capitalizeFirstLetter("${houses.attributes.state} State."),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            const Divider(color: AppColors.primaryColor),
            SizedBox(
              height: Sizes.sHeight * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.bed_rounded),
                    SizedBox(
                      width: Sizes.sWidth * 2,
                    ),
                    Text(houses.attributes.bedroom),
                    SizedBox(
                      width: Sizes.sWidth * 2,
                    ),
                    const Text("Bedroom(s)")
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.bathtub_sharp),
                    SizedBox(
                      width: Sizes.sWidth * 2,
                    ),
                    Text(houses.attributes.bathroom),
                    SizedBox(
                      width: Sizes.sWidth * 2,
                    ),
                    const Text("Bath(s)")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
