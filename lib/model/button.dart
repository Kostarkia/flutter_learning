import 'package:flutter/material.dart';

class ButtonModel {
  final String text;
  final TextStyle? style;
  final TextAlign align;
  final Color backgroundColor;
  final VoidCallback onPressed;

  ButtonModel({
    required this.text,
    this.style,
    this.align = TextAlign.center,
    required this.backgroundColor,
    required this.onPressed,
  });
}