import 'package:flutter/material.dart';

import '../../../../core/text_style/text_styles.dart';
import '../../data/home_data/home_data.dart';

class ContactsWidget extends StatelessWidget {
  ContactsWidget({Key? key}) : super(key: key);

  HomeData data = HomeData();
  double? fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Contacts",
          style: getHeader1Style(Colors.white),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    contactIcon(
                      data.mail,
                    ),
                    TextSpan(
                      text: "Email",
                      style: getBodyStyle(Colors.white),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    contactIcon(
                      data.phone,
                    ),
                    TextSpan(
                      text: "Phone",
                      style: getBodyStyle(Colors.white),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    contactIcon(
                      data.linkedin,
                    ),
                    TextSpan(
                        text: "LinkedIn", style: getBodyStyle(Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  contactIcon(Widget child) => WidgetSpan(
        child: child,
        style: TextStyle(
          fontSize: fontSize,
        ),
      );
}
