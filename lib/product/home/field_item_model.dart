import 'package:flutter/material.dart';

class FieldItems {
  final TextEditingController controller;
  String? errorText;
  final String? labelText;

  FieldItems(this.controller, this.errorText, this.labelText);
}