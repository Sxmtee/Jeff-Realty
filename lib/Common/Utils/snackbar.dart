import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String content) {
  AnimatedSnackBar(
    duration: const Duration(seconds: 10),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(8),
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(content),
        ),
      );
    },
  ).show(context);
}
