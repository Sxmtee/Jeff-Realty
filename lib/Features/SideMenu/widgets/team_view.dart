import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

class TeamView extends StatelessWidget {
  TeamView({super.key});

  final imageList = [
    "assets/images/ceo.jpg",
    "assets/images/okoye.jpg",
    "assets/images/henry.jpg",
    "assets/images/stella.jpg",
    "assets/images/team.jpg"
  ];

  final textList = [
    "Ogbu Solomon Amuche\nCEO Jeff Realty And Trades Solutions Ltd.",
    "Okoye Valentine Chinedu\nManaging Partner Jeff Realty And Trades Solutions Ltd.",
    "Nwanafio Lotanna Henry\nPartner Jeff Realty And Trades Solutions Ltd",
    "Ogochukwu Stellamaris\nPartner Jeff Realty And Trades Solutions Ltd",
    "Executive Team\nJeff Realty And Trades Solutions Ltd."
  ];

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return CarouselSlider(
      items: imageList.asMap().entries.map(
        (entry) {
          final index = entry.key;
          final image = entry.value;
          final text = textList[index];

          return Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                top: Sizes.sHeight * 18,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: Sizes.sHeight * 0.8,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: Sizes.sHeight * 31.25,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
