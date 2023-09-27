import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/loader.dart';
import 'package:jeffrealty/Common/Widgets/error_screen.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';
import 'package:jeffrealty/Features/House/repo/house_repo.dart';
import 'package:jeffrealty/Features/House/widgets/house_card.dart';
import 'package:jeffrealty/Model/house_model.dart';

class HousesScreen extends ConsumerWidget {
  const HousesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Sizes().init(context);

    return Scaffold(
      appBar: statusBar(
        context: context,
        title: const Text(
          "Houses",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        child: FutureBuilder(
          future: ref.watch(houseRepo).fetchHouse(context: context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Loader(),
              );
            }
            if (snapshot.hasError) {
              return ErrorScreen(error: snapshot.error.toString());
            }
            if (!snapshot.hasData) {
              return const ErrorScreen(error: "No Data");
            }

            List data = snapshot.data!;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/icon-luxury.png",
                      color: AppColors.primaryColor,
                      height: Sizes.sHeight * 10,
                      width: Sizes.sWidth * 20,
                    ),
                    const Text(
                      "Discover a place \nwhere you'll love to live.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final house = data[index];

                      return HouseCard(
                        houses: House.fromJson(house),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
