import 'package:flutter/material.dart';

class TextAreas extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboard;
  final int? maxLine;
  final int? minLine;
  final String? Function(String?)? validator;
  const TextAreas({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboard,
    this.maxLine,
    this.minLine,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboard,
      minLines: minLine,
      maxLines: maxLine,
      decoration: InputDecoration(hintText: hintText),
      validator: validator,
    );
  }
}
