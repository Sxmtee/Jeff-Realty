// ignore_for_file: use_build_context_synchronously

import 'package:email_validator/email_validator.dart';
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

  String emailAddress = "services@jeff-realty.com";

  void launchWhatsapp() async {
    const phoneNumber = "+2348120908844";
    final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber");
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      showSnackBar(context, "Can't launch whatsapp");
    }
  }

  void launchInstagram() async {
    final instagramUrl = Uri.parse(
      "https://instagram.com/jefftradesolutions_?igshid=NTc4MTIwNjQ2YQ==",
    );
    if (await canLaunchUrl(instagramUrl)) {
      await launchUrl(instagramUrl, mode: LaunchMode.externalApplication);
    } else {
      showSnackBar(context, "Can't launch Instagram");
    }
  }

  void launchEmail() async {
    final mail = Uri.parse("mailto:$emailAddress");
    if (await canLaunchUrl(mail)) {
      await launchUrl(mail);
    } else {
      showSnackBar(context, 'Could not launch email');
    }
  }

  void launchUserEmailApp() async {
    final recipientEmail = emailAddress;
    const subject = 'Contact Form Submission';
    final body = '''
    Name: ${nameCtrl.text}
    Email: ${emailCtrl.text}
    Phone Number: ${phoneCtrl.text}
    Company: ${companyCtrl.text}
    Conversation:
    ${convoCtrl.text}
  ''';

    final mailtoLink = 'mailto:$recipientEmail?subject=$subject&body=$body';

    final uri = Uri.parse(mailtoLink);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, 'Could not launch email app');
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
                      onPressed: launchWhatsapp,
                      icon: const Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                      ),
                    ),
                    IconBox(
                      onPressed: launchEmail,
                      icon: const Icon(
                        Icons.mail,
                        color: AppColors.button,
                      ),
                    ),
                    IconBox(
                      onPressed: launchInstagram,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                    return null;
                  },
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
                  keyboard: TextInputType.emailAddress,
                  hintText: "Enter your mail",
                  validator: (value) {
                    var emailValid = EmailValidator.validate(value!);
                    if (!emailValid) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: Sizes.sHeight * 2,
                ),
                ButtonText(
                  onpressed: () {
                    if (authKey.currentState!.validate()) {
                      launchUserEmailApp();
                      nameCtrl.clear();
                      emailCtrl.clear();
                      phoneCtrl.clear();
                      companyCtrl.clear();
                      convoCtrl.clear();
                    }
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
