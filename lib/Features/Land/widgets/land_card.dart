import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/Land/screen/land_full_screen.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandCard extends StatelessWidget {
  final Land lands;
  LandCard({super.key, required this.lands});

  final NumberFormat _numberFormat = NumberFormat('#,###');

  String _formatNumber(String input) {
    try {
      int number = int.parse(input.replaceAll(',', ''));
      String formattedNumber = _numberFormat.format(number);
      return formattedNumber;
    } catch (e) {
      return input;
    }
  }

  String capitalizeFirstLetter(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        LandFullScreen.routeName,
        arguments: lands,
      ),
      child: Card(
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: Sizes.sHeight * 53,
          width: Sizes.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Sizes.sHeight * 25,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                      lands.attributes.images.data.first.attributes.url,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              Row(
                children: [
                  const Text(
                    "NGN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.sWidth,
                  ),
                  Text(
                    _formatNumber(lands.attributes.price),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              Text(
                capitalizeFirstLetter(lands.attributes.title),
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
                    capitalizeFirstLetter(lands.attributes.streetName),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.sWidth,
                  ),
                  Text(
                    capitalizeFirstLetter("${lands.attributes.city},"),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.sWidth,
                  ),
                  Text(
                    capitalizeFirstLetter("${lands.attributes.state} State."),
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
                      const Icon(Icons.square_foot_rounded),
                      SizedBox(
                        width: Sizes.sWidth * 2,
                      ),
                      Text(lands.attributes.landSize),
                      SizedBox(
                        width: Sizes.sWidth * 2,
                      ),
                      const Text("SqFt")
                    ],
                  ),
                  if (lands.attributes.cofO)
                    Row(
                      children: [
                        const Text(
                          "C of O",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: Sizes.sWidth * 2,
                        ),
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
