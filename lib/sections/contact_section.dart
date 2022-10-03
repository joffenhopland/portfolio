import 'package:flutter/material.dart';

import '../common/config.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 850) {
        return Container(
          color: themeBackgroundColor1,
          width: double.infinity,
          height: 1000,
          child: const Text("Mobile"),
        );
      } else {
        return Container(
          color: themeBackgroundColor2,
          width: double.infinity,
          height: 1000,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  "Contact me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Feel free to contact me by submitting the form below or \nby sending an email to joffenhopland@gmail.com",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        );
      }
    });
  }
}
