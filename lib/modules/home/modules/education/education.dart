import 'package:flutter/material.dart';
import 'package:online_portfolio/core/home_data/home_data.dart';
import 'package:online_portfolio/core/text_style/text_styles.dart';
import 'package:online_portfolio/modules/home/modules/education/widget/education_widget.dart';
import 'package:online_portfolio/modules/home/widget/special_containers/body_container.dart'; // <-- Fix imports

class EducationSection extends StatefulWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  State<EducationSection> createState() => _EducationSectionState();
}

class _EducationSectionState extends State<EducationSection> {
  HomeData data = HomeData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      height: MediaQuery.of(context).size.height,
      child: BodyContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Education",
              style: getTitleStyle(Colors.white, true),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              child: Row(
                children: data.education
                    .map(
                      (item) => Expanded(
                        child: EducationWidget(item: item),
                      ), // <-- Make a variable for this.
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
