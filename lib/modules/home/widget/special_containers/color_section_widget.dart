import 'package:flutter/material.dart';

class ColorSectionWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  const ColorSectionWidget({Key? key, required this.child, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      width: double.infinity,
      child: child,
    );
  }
}
