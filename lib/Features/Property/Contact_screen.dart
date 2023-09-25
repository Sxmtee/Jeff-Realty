import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
