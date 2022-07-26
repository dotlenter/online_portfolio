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
      height: 500,
      width: double.infinity,
      color: Colors.black.withOpacity(0.8),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contact Me!",
            style: getTitleStyle(Colors.white),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                emailTextFields(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconTextPair(data.phone, "+639983412995"),
                    IconTextPair(data.linkedin, "LinkedIn"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget IconTextPair(AssetImage image, String text) => Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            IconButton(
              onPressed: () => null,
              icon: ImageIcon(
                image,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: getBodyStyle(Colors.white),
            ),
          ],
        ),
      );

  Widget emailTextFields() => Column(
        children: [
          whiteTextField("Subject"),
          whiteTextField("Body", 5),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () => null,
              child: Text(
                "Send",
                style: getHeader1Style(Colors.white),
              ))
        ],
      );

  Container whiteTextField(String hintText, [int? lines]) => Container(
        padding: const EdgeInsets.all(20),
        child: TextField(
          maxLines: lines,
          style: const TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            label: Text(
              hintText,
              style: getBodyStyle(Colors.white),
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
          ),
        ),
      );
}
