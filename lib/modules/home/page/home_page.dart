import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/modules/education/education.dart';
import 'package:online_portfolio/modules/home/modules/trivia/trivia_section.dart';
import 'package:online_portfolio/modules/home/widget/app_bar_switcher_widget/app_bar_switcher_widget.dart';

import '../domain/image_getter.dart';
import '../modules/contacts/contacts.dart';
import '../modules/intro/intro.dart';
import '../modules/skill/skill.dart';
import '../modules/works/works.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImgGetter img = ImgGetter();
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  final _home = GlobalKey();
  final _skills = GlobalKey();
  final _works = GlobalKey();
  final _education = GlobalKey();
  final _contact = GlobalKey();
  final _appBarAKey = UniqueKey();
  final _appBarBKey = UniqueKey();

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: img.diamondBackground,
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBarSwitcher(50),
        body: Stack(
          children: [
            buildBody(),
            const Align(
              alignment: Alignment.bottomCenter,
              child: TriviaSection(),
            ),
          ],
        ),
      ),
    );
  }

  buildBody() => Scrollbar(
        controller: _scrollController,
        thickness: 20,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              IntroSection(
                key: _home,
              ),
              SkillSection(
                key: _skills,
              ),
              WorksSection(
                key: _works,
              ),
              EducationSection(
                key: _education,
              ),
              ContactsSection(
                key: _contact,
              ),
            ],
          ),
        ),
      );

  PreferredSize AppBarSwitcher(double height) {
    return PreferredSize(
      preferredSize: Size(
        height,
        height,
      ),
      child: AppBarSwitcherWidget(
        scrollPosition: _scrollPosition,
        home: _home,
        skills: _skills,
        works: _works,
        education: _education,
        contact: _contact,
        appBarAKey: _appBarAKey,
        appBarBKey: _appBarBKey,
        scrollController: _scrollController,
      ),
    );
  }
}
