import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/domain/image_getter.dart';
import 'package:online_portfolio/modules/home/widget/special_containers/rounded_opacity_container.dart';

import '../../../../../core/text_style/text_styles.dart';
import '../../../../core/home_data/home_data.dart';
import '../../widget/short_description_widget/short_description_widget.dart';
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
    return BodyContainer(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My Works",
            style: getTitleStyle(Colors.white, true),
          ),
          RoundedOpacityContainer(
            color: Colors.black.withOpacity(0.8),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 4 / 2,
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
