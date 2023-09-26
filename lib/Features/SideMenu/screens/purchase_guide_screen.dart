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
              const Text(
                "6. Title Documents:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Request and review all relevant title documents, such as the Certificate of Occupancy (C of O), Deed of Assignment, Survey Plan, and Gazette. These documents prove land ownership and legal status.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "7. Survey and Inspection:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Conduct a land survey to confirm boundaries and dimensions. Physically visit the land to assess its suitability and verify if it matches the information provided in the documents.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "8. Negotiation and Offer:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Engage in negotiations with the seller. Make an offer based on market research and property valuation. Be prepared for counteroffers and ensure all terms are agreed upon in writing.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "9. Payment and Documentation:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "After reaching an agreement, make a down payment or initial deposit. Ensure that all payments are made through secure and legal channels. Collect and retain copies of all payment receipts.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "10. Transfer of Ownership:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Complete the legal transfer of ownership by signing the Deed of Assignment and other relevant documents in the presence of a notary public. This step is crucial for securing your rights to the property.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "11. Payment of Statutory Fees:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Pay all applicable government fees and taxes, including stamp duties and registration fees, to ensure your land ownership is recognized by the authorities.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "12. Community Engagement:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "If your land purchase involves communal land or ancestral land, engage with the community leaders to seek their approval and secure a community consent letter, if necessary.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "13. Get Receipts and Certificates:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Obtain receipts and certificates for all payments made, including tax receipts, and keep them safely for future reference.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "14. Post-Purchase Inspection:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Conduct a final inspection of the land after all transactions are complete to ensure there are no surprises or discrepancies.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "15. Registration:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Register your land with the appropriate government land registry to secure your legal ownership rights and prevent disputes.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "16. Infrastructure and Development Plans:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Be aware of any future infrastructure and development plans in the area, as they can affect the value and use of your land.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "17. Continuous Monitoring:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Regularly monitor your property and stay informed about changes in land laws, regulations, and property values in the area.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "18. Legal Protection:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Consider obtaining title insurance or consulting with a legal professional to protect your investment and property rights.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 2,
              ),
              const Text(
                "19. Resale Value and Exit Strategy:",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Plan for the future by considering the resale value of your land and having an exit strategy in case you need to sell it.",
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
