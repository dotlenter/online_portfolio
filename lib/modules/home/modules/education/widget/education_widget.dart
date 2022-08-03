import 'package:flutter/material.dart';

import '../../../../../core/text_style/text_styles.dart';
import '../../../data/models/short_description.dart';
import '../../../widget/special_containers/rounded_opacity_container.dart';

class EducationWidget extends StatelessWidget {
  final ShortDescription item;
  final Color? color;
  final bool? hasShadow;
  const EducationWidget(
      {Key? key,
      required this.item,
      this.color = Colors.black,
      this.hasShadow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedOpacityContainer(
      margin: 10,
      color: Colors.white.withOpacity(0.9),
      child: Container(
        height: (MediaQuery.of(context).size.height / 2), // <-- Make a variable for this
        padding: const EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                item.title,
                style: getHeader1Style(color, hasShadow),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Divider(
                    color: Colors.black,
                  ),
                  Text(
                    item.subtitle,
                    style: getSubtitleStyle(color, hasShadow),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    item.body,
                    style: getBodyStyle(color, hasShadow),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
