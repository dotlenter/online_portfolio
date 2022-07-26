import 'package:flutter/material.dart';

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
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                          onPressed: () {
                            print(skill.name);
                            String skillText = data.getSkillDir(skill.name);
                            print(skillText);
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
          ),
          SkillDescription(),
        ],
      ),
    );
  }

  Widget SkillDescription() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1000,
          minWidth: 500,
        ),
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(50),
            margin: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.indigo,
                width: 2.0,
              ),
            ),
            child: Text(
              _description,
              style: getBodyStyle(),
            )),
      ),
    );
  }
}
