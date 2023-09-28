import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Model/land_model.dart';

class LandCarousel extends StatelessWidget {
  final Land lands;
  const LandCarousel({super.key, required this.lands});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return CarouselSlider.builder(
      itemCount: lands.attributes.images.data.length,
      itemBuilder: (context, index, realIndex) {
        final images = lands.attributes.images.data[index];

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
