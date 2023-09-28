import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HouseCarousel extends StatelessWidget {
  final House house;
  const HouseCarousel({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return CarouselSlider.builder(
      itemCount: house.attributes.images.data.length,
      itemBuilder: (context, index, realIndex) {
        final images = house.attributes.images.data[index];

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(images.attributes.url),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: Sizes.sHeight * 32,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
