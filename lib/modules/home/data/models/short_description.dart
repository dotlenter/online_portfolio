import 'package:flutter/material.dart';

class ShortDescription {
  final String title;
  final String subtitle;
  final String body;
  final Color? textColor;
  final bool hasShadow;
  final bool alignLeft;

  ShortDescription({
    this.alignLeft = false,
    this.hasShadow = false,
    this.textColor = Colors.black,
    this.subtitle = '',
    required this.title,
    required this.body,
  }) : super();
}
