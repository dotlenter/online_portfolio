import 'package:flutter/material.dart';

textShadow(bool hasShadow) {
  if (hasShadow) {
    return [
      const Shadow(
        color: Colors.black,
        offset: Offset(0, 2),
        blurRadius: 1.5,
      ),
    ];
  }
}
