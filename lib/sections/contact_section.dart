import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common_widgets/cta_button_1.dart';
import 'package:http/http.dart' as http;
import '../common/config.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 850) {
        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                themeBackgroundColor1,
                themeBackgroundColor2,
              ])),
          width: double.infinity,
          height: 1000,
          child: const Text("Mobile"),
        );
      } else {
        return Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  themeBackgroundColor1,
                  themeBackgroundColor2,
                ])),
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
                buildTextField(title: 'Name', controller: controllerName),
                buildTextField(title: 'Email', controller: controllerEmail),
                buildTextField(title: 'Subject', controller: controllerSubject),
                buildTextField(
                    title: 'Message',
                    controller: controllerMessage,
                    maxLines: 8),
                // TODO: Implement url launcher to send email on pressed
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: CTAButton1(
                    text: 'Send',
                    onPressed: () {
                      sendEmail(
                          name: controllerName.text,
                          email: controllerEmail.text,
                          subject: controllerSubject.text,
                          message: controllerMessage.text);
                      controllerName.clear();
                      controllerEmail.clear();
                      controllerSubject.clear();
                      controllerMessage.clear();

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Email sent successfully!'),
                        action:
                            SnackBarAction(label: 'Success', onPressed: () {}),
                      ));
                    },
                  ),
                ),
              ],
            ));
      }
    });
  }

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    const serviceId = 'service_xgzmr48';
    const templateId = 'template_w9gbgv9';
    const userId = 'b3MguBJS3sriGqOc5';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        }
      }),
    );
    // print(response.body);
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Container(
        width: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              maxLines: maxLines,
              cursorColor: themeColor,
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor)),
              ),
            )
          ],
        ),
      );
}
