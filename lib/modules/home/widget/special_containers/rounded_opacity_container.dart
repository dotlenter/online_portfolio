import 'package:flutter/material.dart';

class RoundedOpacityContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Alignment? alignment;
  const RoundedOpacityContainer(
      {Key? key, required this.child, this.color, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        color: color,
      ),
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(30),
      alignment: alignment,
      child: child,
    );
  }
}
