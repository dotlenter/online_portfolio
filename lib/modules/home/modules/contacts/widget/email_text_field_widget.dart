import 'package:flutter/material.dart';
import 'package:online_portfolio/modules/home/data/models/email_model.dart'; // <-- Fix imports

import '../../../../../core/text_style/text_styles.dart';

class EmailTextField extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController subject;
  final TextEditingController body;
  const EmailTextField(
      {Key? key,
      required this.formKey,
      required this.name,
      required this.email,
      required this.subject,
      required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: whiteTextField(name, "Name"),
                ),
                Expanded(
                  child: whiteTextField(email, "Email"),
                ),
              ],
            ),
            whiteTextField(subject, "Subject"),
            whiteTextField(body, "Body", 5),
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Email mail = Email(
                      name: name.text,
                      email: email.text,
                      subject: subject.text,
                      body: body.text,
                    );
                    name.clear();
                    email.clear();
                    subject.clear();
                    body.clear();
                    print("From " + mail.name + " - " + mail.email);
                    print("Subject - " + mail.subject);
                    print(mail.body);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Sending Email...")),
                    );
                    const Duration(seconds: 2);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email sent!")),
                    );
                  }
                },
                child: Text(
                  "Send",
                  style: getHeader1Style(Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  Container whiteTextField(TextEditingController controller, String hintText, // <-- Make this method private
          [int? lines]) =>
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: TextFormField(
          validator: ((value) {
            if (value == null || value.isEmpty) return 'Please enter some text';
            return null;
          }),
          controller: controller,
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
