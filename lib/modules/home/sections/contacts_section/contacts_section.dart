import 'package:flutter/material.dart';

import '../../../../core/home_data/home_data.dart';
import '../../../../core/text_style/text_styles.dart';

class ContactsSection extends StatelessWidget {
  ContactsSection({Key? key}) : super(key: key);

  HomeData data = HomeData();
  double? fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contacts",
            style: getHeader1Style(Colors.white),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    ImageIcon(
                      data.phone,
                      color: Colors.white,
                    ),
                    Text(
                      "+639983412995",
                      style: getBodyStyle(Colors.white),
                    ),
                  ],
                ),
                emailTextFields(),
                ImageIcon(data.linkedin),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextFields() => Column(
        children: [
          whiteTextField("Subject"),
          whiteTextField("Body"),
        ],
      );

  Container whiteTextField(String hintText, [double? height]) => Container(
        height: height,
        padding: const EdgeInsets.all(20),
        child: TextField(
          style: const TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            label: Text(
              hintText,
              style: getBodyStyle(Colors.white),
            ),
            icon: ImageIcon(
              data.mail,
              color: Colors.white,
            ),
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            hintText: hintText,
          ),
        ),
      );
}
