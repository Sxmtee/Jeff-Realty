import 'package:flutter/material.dart';

class TextAreas extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboard;
  final FocusNode? focusNode;
  final int? maxLine, minLine, maxLength;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final InputBorder? border;
  const TextAreas({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboard,
    this.maxLine,
    this.minLine,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.border,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboard,
      maxLength: maxLength,
      focusNode: focusNode,
      minLines: minLine,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        border: border,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please fill this field";
        }
        return null;
      },
      onChanged: onChanged,
      onTap: onTap,
    );
  }
}
