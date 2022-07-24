import 'package:flutter/material.dart';
import 'package:online_portfolio/core/text_style/text_styles.dart';
import 'package:online_portfolio/modules/home/data/home_data/home_data.dart';
import 'package:online_portfolio/modules/home/widget/contacts_widget/contacts_widget.dart';
import 'package:online_portfolio/modules/home/widget/short_description_widget/short_description_widget.dart';
import 'package:online_portfolio/modules/home/widget/skill_widgets/skill_description_widget..dart';
import 'package:online_portfolio/modules/home/widget/special_containers/background_image_section.dart';

import '../domain/image_getter.dart';
import '../widget/navigation_bar_widget/navigation_bar_widget.dart';
import '../widget/skill_widgets/skill_icon_widget.dart';
import '../widget/special_containers/body_container.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeData data = HomeData();
  ImgGetter img = ImgGetter();
  String skillName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown[50],
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              buildBody(),
              const Positioned(
                child: Center(
                  child: NavigationBarWidget(),
                ),
                top: 0,
                left: 0,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildBody() => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            BackgroundImageSectionWidget(
              imageProvider: img.diamondBackground,
              child: BodyContainer(
                width: 700,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ShortDescriptionWidget(
                        description: data.getAbout(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BodyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style: getTitleStyle(),
                  ),
                  Text(
                    "Programming Languages and Markdown",
                    style: getHeader1Style(),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: data.skills
                              .map(
                                (skill) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(30)),
                                  onPressed: () => setState(() {
                                    skillName = skill.name;
                                  }),
                                  child: SkillIconWidget(skill: skill),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  SkillDescriptionWidget(
                    skill: skillName,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              child: ContactsWidget(),
            ),
          ],
        ),
      );
}
