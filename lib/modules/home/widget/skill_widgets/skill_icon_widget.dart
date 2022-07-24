import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/data/models/skill_icon.dart';
import 'package:online_portfolio/modules/home/domain/image_getter.dart';

class SkillIconWidget extends StatelessWidget {
  final SkillIcon skill;
  SkillIconWidget({Key? key, required this.skill}) : super(key: key);
  ImgGetter img = ImgGetter();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Image(
            image: img.getSkillIcon(skill.iconLocation),
            height: 50,
          ),
          Text(
            skill.name,
            style: const TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
