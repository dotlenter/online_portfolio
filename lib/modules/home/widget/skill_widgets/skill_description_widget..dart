import 'package:flutter/material.dart';

import '../../../../core/text_style/text_styles.dart';
import '../../domain/text_getter.dart';

class SkillDescriptionWidget extends StatelessWidget {
  final String skill;
  SkillDescriptionWidget({Key? key, required this.skill}) : super(key: key);

  TextGetter txt = TextGetter();

  @override
  Widget build(BuildContext context) {
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
              txt.getSkillText(skill),
              style: getBodyStyle(),
            )),
      ),
    );
  }
}
