import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Features/SideMenu/widgets/team_view.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/About-screen";
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          "Company",
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
                "About Us",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              TeamView(),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "Welcome to Jeffy Real Estate, your trusted partner in the world of real estate. Founded with a vision to redefine the real estate experience, we take pride in offering unparalleled services, cutting-edge solutions, and a customer-centric approach that sets us apart in the industry. Our journey began with a simple belief that real estate transactions should be more than just transactions; they should be transformative experiences that enrich lives and build lasting connections. At the heart of our company lies a deep commitment to our clients. We understand that buying, selling, or investing in real estate can be a significant decision, both financially and emotionally. That's why we prioritize understanding your unique needs and aspirations, ensuring that we provide tailored solutions to match them perfectly. Our team is comprised of seasoned real estate professionals who bring a wealth of knowledge and experience to the table. Their expertise spans various facets of the industry, including residential, commercial, and investment properties. With a pulse on the ever-changing market trends, we equip our clients with the most up-to-date information to make well-informed choices.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 4,
              ),
              const Text(
                "Our Vision",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "We envision a world where every individual can find their dream home and invest in real estate with confidence. Our vision is driven by a commitment to excellence, innovation, and personalized service, making us the go-to destination for all your real estate needs. At Jeffy Real Estate, we believe that a home is not just a physical space; it is a reflection of your dreams, aspirations, and the place where beautiful memories are created. Our vision is to be the leading real estate company that understands and fulfills the unique desires of each client. Whether you are a first-time homebuyer, a seasoned investor, or a family looking to upsize, we strive to provide a seamless and rewarding real estate journey for all. In pursuit of our vision, we aim to embrace cutting-edge technologies, industry trends, and sustainable practices to ensure that our clients receive the highest level of service. By fostering a culture of trust, integrity, and professionalism, we seek to set new benchmarks in the real estate industry, enhancing the lives of individuals and communities we serve. Join us in our vision, as we take you on a transformative experience, turning your real estate dreams into reality.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: Sizes.sHeight * 4,
              ),
              const Text(
                "Our Core Values",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              Container(
                height: Sizes.sHeight * 31.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/shake_hand.webp"),
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.sHeight,
              ),
              const Text(
                "• Client satisfaction is our priority\n• Safety is never compromised.\n• Compliance with government and industry regulations\n• Provide and retain high quality with on schedule services.\n• We take our clients/customers as partners.\n• To generate reasonable returns on the assets entrusted to us by our shareholders.\n• To always show concern for the well-being of our employees and co-workers.\n• To promote teamwork.\n• Strive for efficiency in all that we do",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
