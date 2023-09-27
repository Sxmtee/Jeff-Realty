// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeffrealty/Common/Utils/color.dart';
import 'package:jeffrealty/Common/Utils/dimensions.dart';
import 'package:jeffrealty/Common/Utils/snackbar.dart';
import 'package:jeffrealty/Common/Widgets/button.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';
import 'package:jeffrealty/Features/Contact/widgets/icon_box.dart';
import 'package:jeffrealty/Features/Contact/widgets/textarea.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController companyCtrl = TextEditingController();
  final TextEditingController convoCtrl = TextEditingController();
  final GlobalKey<FormState> authKey = GlobalKey<FormState>();

  void launchWhatsapp() async {
    const phoneNumber = "+2347031250097";
    final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      showSnackBar(context, "Can't launch whatsapp");
    }
  }

  @override
  void dispose() {
    nameCtrl.dispose();
    emailCtrl.dispose();
    phoneCtrl.dispose();
    companyCtrl.dispose();
    convoCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Sizes().init(context);

    return Scaffold(
      appBar: statusBar(
        context: context,
        title: const Text(
          "Contact us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: Sizes.screenHeight,
        width: Sizes.screenWidth,
        child: Form(
          key: authKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/icon-deal.png",
                      color: AppColors.primaryColor,
                      height: Sizes.sHeight * 10,
                      width: Sizes.sWidth * 20,
                    ),
                    const Text(
                      "Let's start a conversation",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconBox(
                      onPressed: () {
                        launchWhatsapp();
                      },
                      icon: const Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                      ),
                    ),
                    IconBox(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                      ),
                    ),
                    IconBox(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Sizes.sHeight,
                ),
                TextAreas(
                  controller: nameCtrl,
                  hintText: "Enter your name",
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                const Text(
                  "E-mail",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Sizes.sHeight,
                ),
                TextAreas(
                  controller: emailCtrl,
                  hintText: "Enter your mail",
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Sizes.sHeight,
                ),
                TextAreas(
                  controller: phoneCtrl,
                  keyboard: TextInputType.phone,
                  hintText: "Enter your Phone Number",
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                const Text(
                  "Company",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Sizes.sHeight,
                ),
                TextAreas(
                  controller: companyCtrl,
                  hintText: "Enter your Company's name",
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                const Text(
                  "Conversation",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Sizes.sHeight,
                ),
                TextAreas(
                  minLine: 5,
                  maxLine: 8,
                  controller: convoCtrl,
                  hintText: "Tell us something",
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                ButtonText(
                  onpressed: () {
                    if (authKey.currentState!.validate()) {}
                  },
                  text: "Submit",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
