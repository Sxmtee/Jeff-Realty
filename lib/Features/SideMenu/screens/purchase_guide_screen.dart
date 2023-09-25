import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';

class PurchaseGuide extends StatelessWidget {
  static const routeName = "/Purchase-guide";
  const PurchaseGuide({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          "Purchase Guide",
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buying Guides for Land Properties in Nigeria",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight * 3,
              ),
              const Text(
                "1. Define Your Objectives:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Clearly outline your purpose for buying land. Are you buying for residential, commercial, agricultural, or investment purposes? Knowing your objectives will guide your search and decision-making.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "2. Research Locations:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Research different locations in Nigeria to find the one that suits your needs. Consider factors like proximity to amenities, infrastructure development, security, and potential for future growth.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "3. Budget Planning:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Determine your budget and be realistic about your financial capabilities. Consider not only the cost of the land but also additional expenses such as legal fees, survey costs, and any applicable taxes.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "4. Engage a Real Estate Agent:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Working with a reputable real estate agent can simplify the buying process. They have local knowledge, can help you find suitable properties, and negotiate on your behalf.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "5. Land Verification:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Before proceeding, verify the authenticity of the land and all relevant documents. Ensure the land is free from disputes, encumbrances, or legal issues. Engage a legal professional or a surveyor for this purpose.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
