import 'package:flutter/material.dart';

import 'text_shadow.dart';

getTitleStyle([Color? textColor = Colors.black, bool? hasShadow = false]) =>
    TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: textColor,
        shadows: textShadow(hasShadow as bool));
getHeader1Style([Color? textColor = Colors.black, bool? hasShadow = false]) =>
    TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: textColor,
        shadows: textShadow(hasShadow as bool));
getBodyStyle([Color? textColor = Colors.black, bool? hasShadow = false]) =>
    TextStyle(
      fontSize: 18,
      color: textColor,
      shadows: textShadow(hasShadow as bool),
    );
getSubtitleStyle([Color? textColor = Colors.black, bool? hasShadow = false]) =>
    TextStyle(
      fontSize: 24,
      fontStyle: FontStyle.italic,
      color: textColor,
      shadows: textShadow(hasShadow as bool),
    );
