import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/widget/special_containers/rounded_opacity_container.dart';

import '../../../../../core/text_style/text_styles.dart';
import '../../../../core/home_data/home_data.dart';
import '../../widget/special_containers/body_container.dart';
import 'skill_icon_widget.dart';

class SkillSection extends StatefulWidget {
  const SkillSection({Key? key}) : super(key: key);

  @override
  State<SkillSection> createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {
  HomeData data = HomeData();
  String skillName = "";
  String _description = "Press a button to view my skills!";

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Skills",
            style: getTitleStyle(Colors.white, true),
          ),
          RoundedOpacityContainer(
            color: Colors.black.withOpacity(0.8),
            child: Column(
              children: [
                Text(
                  "Programming Languages and Markdown",
                  style: getHeader1Style(Colors.white, true),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data.skills
                          .map(
                            (skill) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(20)),
                              onPressed: () {
                                String skillText = data.getSkillDir(skill.name);
                                setState(() {
                                  _description = skillText;
                                });
                              },
                              child: SkillIconWidget(skill: skill),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
                SkillDescription(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget SkillDescription() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 700,
          minWidth: 500,
        ),
        child: RoundedOpacityContainer(
          color: Colors.white,
          child: Container(
              alignment: Alignment.center,
              child: Text(
                _description,
                style: getBodyStyle(),
              )),
        ),
      ),
    );
  }
}
