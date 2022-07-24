import 'package:flutter/material.dart';

class ShortDescription {
  final String title;
  final String? subtitle;
  final String body;
  final Color? textColor;

  ShortDescription({
    this.textColor = Colors.black,
    this.subtitle,
    required this.title,
    required this.body,
  }) : super();
}
