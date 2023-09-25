import 'package:flutter/material.dart';
import 'package:jeffrealty/Common/Widgets/statusbar.dart';

class LandScreen extends StatelessWidget {
  const LandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: statusBar(
        context: context,
        title: const Text(
          "Lands",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
