import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/data/models/short_description.dart';
import 'package:online_portfolio/modules/home/data/models/skill_icon.dart';

class HomeData {
  final ShortDescription _aboutMe = ShortDescription(
    textColor: Colors.white,
    hasShadow: true,
    title: "Hello, I'm Carlos",
    body:
        "Computer Science student of the University of the Philippines, Los Baños. Mobile Developer with some experience in other fields such as ReactJS backend, MongoDB databases, and Python",
  );

  final List<ShortDescription> workExp = [
    ShortDescription(
        title: "Sprout Solutions Phil., Inc.",
        subtitle: "Intern",
        body: "Software Development Intern")
  ];

  final List<ShortDescription> works = [
    ShortDescription(
        title: "KALATAS",
        subtitle: "2022 - General Weighted Average Verifier for UPLB",
        body:
            "CMSC 128 group project wherein I am a Team Leader and a Programmer of the Database team.",
        alignLeft: true),
    ShortDescription(
        title: "Periodic Visionary",
        subtitle: "2021 - Science blog project",
        body:
            "SCI 10 Earth Science blog on the future of the elements of the periodic table web: https://periodicvisionary.wordpress.com/",
        alignLeft: true),
    ShortDescription(
        title: "Deliverance",
        subtitle: "2018 - Grade 11 video game project",
        body:
            "Turn-based console video game built in C# - Incorporates heavy use of ASCII graphics and sound",
        alignLeft: true),
  ];

  final List<SkillIcon> skills = [
    SkillIcon(
      'graphics/skill_icon/python.png',
      'Python',
    ),
    SkillIcon(
      'graphics/skill_icon/javascript.png',
      'Javascript',
    ),
    SkillIcon(
      'graphics/skill_icon/flutter.png',
      'Flutter',
    ),
    SkillIcon(
      'graphics/skill_icon/c.png',
      'C',
    ),
    SkillIcon(
      'graphics/skill_icon/c-sharp.png',
      'C#',
    ),
    SkillIcon(
      'graphics/skill_icon/mongodb.png',
      'MongoDB',
    ),
    SkillIcon(
      'graphics/skill_icon/github.png',
      'Github',
    ),
  ];

  ImageIcon phone =
      const ImageIcon(AssetImage("graphics/contact_icon/phone.png"));
  ImageIcon mail =
      const ImageIcon(AssetImage("graphics/contact_icon/mail.png"));
  ImageIcon linkedin =
      const ImageIcon(AssetImage("graphics/contact_icon/linkedin.png"));

  final String _python =
      "I have experience with designing UI and Artificial Intelligence in Python.";
  final String _javascript =
      "I have experience in creating React JS backends and connecting them to HTML/CSS frontends.";
  final String _flutter =
      "I have experience with designing UI and Artificial Intelligence in Python.";
  final String _c =
      "I have experience in working with data structures and threads in C.";
  final String _cSharp =
      "I have experience with creating a CLI Console game in C#.";
  final String _mongodb =
      "I have experience with working with MongoDB databases.";
  final String _github =
      "I have experience with working with repositories and collaborated development in Github.";

  getAbout() => _aboutMe;

  getSkillDir(String skill) {
    if (skill == "Python") return _python;
    if (skill == "Javascript") return _python;
    if (skill == "Flutter") return _python;
    if (skill == "C") return _python;
    if (skill == "C#") return _python;
    if (skill == "MongoDB") return _python;
    if (skill == "Github") return _python;
    return "No skill selected";
  }
}
