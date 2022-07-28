import 'package:flutter/material.dart';
import 'package:online_portfolio/core/text_style/text_styles.dart';
import 'package:online_portfolio/modules/home/data/models/short_description.dart';
import 'package:online_portfolio/modules/home/widget/special_containers/rounded_opacity_container.dart';

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
      padding: 20,
      color: Colors.white.withOpacity(0.9),
      child: Container(
        height: (MediaQuery.of(context).size.height / 2),
        padding: const EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.title,
              style: getHeader1Style(color, hasShadow),
            ),
            Column(
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
          ],
        ),
      ),
    );
  }
}
