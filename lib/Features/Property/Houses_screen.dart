import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';

class HousesScreen extends StatelessWidget {
  const HousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
