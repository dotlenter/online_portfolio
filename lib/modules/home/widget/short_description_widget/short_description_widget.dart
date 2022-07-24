import 'package:flutter/material.dart';

import '../../../../core/text_style/text_styles.dart';
import '../../data/models/short_description.dart';

class ShortDescriptionWidget extends StatelessWidget {
  final ShortDescription description;
  const ShortDescriptionWidget({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            description.title,
            style: getHeader1Style(description.textColor, true),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            description.body,
            style: getBodyStyle(description.textColor, true),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
