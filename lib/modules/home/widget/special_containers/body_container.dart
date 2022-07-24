import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final Color? backgroundColor;
  const BodyContainer(
      {Key? key, required this.child, this.backgroundColor, this.width = 1200})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(50),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width,
        ),
        child: child,
      ),
    );
  }
}
