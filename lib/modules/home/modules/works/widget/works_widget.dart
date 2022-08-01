import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/models/short_description.dart';
import '../../../widget/short_description_widget/short_description_widget.dart';

class WorksWidget extends StatelessWidget {
  final List<ShortDescription> works;
  final CarouselController controller;
  const WorksWidget({Key? key, required this.works, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: works.length,
      options: CarouselOptions(
        enableInfiniteScroll: false,
        viewportFraction: MediaQuery.of(context).size.width > 1000 ? 0.33 : 0.6,
        initialPage: 1,
      ),
      itemBuilder: (context, itemIndex, realIndex) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
          ),
          alignment: Alignment.center,
          child: ShortDescriptionWidget(
            description: works[itemIndex],
          ),
        );
      },
    );
  }
}
