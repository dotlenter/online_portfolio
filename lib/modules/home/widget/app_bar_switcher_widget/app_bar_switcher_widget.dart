import 'package:flutter/material.dart';

import '../../../../core/text_style/text_styles.dart';

class AppBarSwitcherWidget extends StatelessWidget {
  final double scrollPosition;
  final ScrollController scrollController;
  final GlobalKey home;
  final GlobalKey skills;
  final GlobalKey works;
  final GlobalKey education;
  final GlobalKey contact;
  final UniqueKey appBarAKey;
  final UniqueKey appBarBKey;
  const AppBarSwitcherWidget({
    Key? key,
    required this.scrollPosition,
    required this.home,
    required this.skills,
    required this.works,
    required this.education,
    required this.contact,
    required this.appBarAKey,
    required this.appBarBKey,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      duration: const Duration(
        milliseconds: 250,
      ),
      child: scrollPosition <= 500 ? _buildDefaultAppBar : _buildScrollingAppBar, // <-- Make this a variable
    );
  }

  Widget _buildDefaultAppBar
  Widget _buildScrollingAppBar

  get appBarA => AppBar( // <-- Refactor and make this a method, follow naming conventions
        key: appBarAKey,
        title: Text(
          "CARLOS RAYEL",
          style: getTitleStyle(
            Colors.white,
            true,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          appbarButtons(home, "Home"),
          appbarButtons(skills, "Skills"),
          appbarButtons(works, "Works"),
          appbarButtons(education, "Education"),
          appbarButtons(contact, "Contact Me"),
        ],
      );
  get appBarB => AppBar(
        key: appBarBKey,
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.8),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appbarButtons(home, "Home"),
            appbarButtons(skills, "Skills"),
            appbarButtons(works, "Works"),
            appbarButtons(education, "Education"),
            appbarButtons(contact, "Contact Me"),
          ],
        ),
      );

  Widget appbarButtons(GlobalKey key, String text) => TextButton( // <-- Create a new widget for this
        onPressed: () => scrollController.position.ensureVisible( // <-- Make a private method for this
          key.currentContext?.findRenderObject() as RenderBox,
          duration: const Duration(milliseconds: 500),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: getBodyStyle(Colors.white, true),
          ),
        ),
      );
}
