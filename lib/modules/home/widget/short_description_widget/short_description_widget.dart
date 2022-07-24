import 'package:flutter/material.dart';

import '../../../../core/text_style/text_styles.dart';
import '../../data/models/short_description.dart';

class ShortDescriptionWidget extends StatelessWidget {
  final ShortDescription description;
  const ShortDescriptionWidget({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 250,
        maxWidth: 1000,
      ),
      child: Column(
        children: [
          Text(
            description.title,
            style:
                getHeader1Style(description.textColor, description.hasShadow),
            textAlign:
                description.alignLeft ? TextAlign.left : TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          if (description.subtitle.isNotEmpty)
            Text(
              description.subtitle,
              style: getSubtitleStyle(
                  description.textColor, description.hasShadow),
              textAlign:
                  description.alignLeft ? TextAlign.left : TextAlign.center,
            ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description.body,
            style: getBodyStyle(description.textColor, description.hasShadow),
            textAlign:
                description.alignLeft ? TextAlign.left : TextAlign.center,
          ),
        ],
      ),
    );
  }
}
