import 'package:flutter/material.dart';

class ImgGetter {
  getGardenProfile() => const Image(
        image: AssetImage('graphics/home_page/Rayel-Garden.jpg'),
        height: 700,
      );
  getSkillIcon(String location) => AssetImage(location);

  get diamondBackground =>
      const AssetImage('graphics/home_page/diamond_bg.jpg');
}
