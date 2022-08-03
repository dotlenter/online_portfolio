import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/domain/image_getter.dart'; // <-- Fix import

import '../../../../core/home_data/home_data.dart';
import '../../widget/short_description_widget/short_description_widget.dart';
import '../../widget/special_containers/body_container.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  ImgGetter img = ImgGetter();
  HomeData data = HomeData();

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      width: 700,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: img.getBlueProfile(),
                )),
          ),
          ShortDescriptionWidget(
            description: data.getAbout(),
          ),
        ],
      ),
    );
  }
}
