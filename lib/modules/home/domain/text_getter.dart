import 'package:online_portfolio/modules/home/data/home_data/home_data.dart';

HomeData data = HomeData();

class TextGetter {
  String getSkillText(String skill) => data.getSkillDir(skill);
}
