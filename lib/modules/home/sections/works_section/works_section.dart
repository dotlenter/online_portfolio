import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/domain/image_getter.dart';

import '../../../../../core/text_style/text_styles.dart';
import '../../../../core/home_data/home_data.dart';
import '../../widget/short_description_widget/short_description_widget.dart';
import '../../widget/special_containers/background_image_section.dart';
import '../../widget/special_containers/body_container.dart';

class WorksSection extends StatefulWidget {
  const WorksSection({Key? key}) : super(key: key);

  @override
  State<WorksSection> createState() => _WorksSectionState();
}

class _WorksSectionState extends State<WorksSection> {
  HomeData data = HomeData();
  ImgGetter img = ImgGetter();

  @override
  Widget build(BuildContext context) {
    return BackgroundImageSectionWidget(
      imageProvider: img.comsciBackground,
      child: Column(
        children: [
          BodyContainer(
            height: 100,
            child: Text(
              "My Works",
              style: getTitleStyle(Colors.white, true),
            ),
          ),
          BodyContainer(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 5 / 2,
              children: data.works
                  .map((work) => ShortDescriptionWidget(description: work))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
