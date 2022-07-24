import 'package:flutter/material.dart';

class BackgroundImageSectionWidget extends StatelessWidget {
  final Widget child;
  final AssetImage imageProvider;
  const BackgroundImageSectionWidget(
      {Key? key, required this.child, required this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
