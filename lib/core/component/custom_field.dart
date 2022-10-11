import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final String? labelText;
  final Function(String val) onChanged;
  const CustomField({Key? key, required this.controller, required this.errorText, required this.labelText, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onChanged: onChanged,
    );
  }
}
