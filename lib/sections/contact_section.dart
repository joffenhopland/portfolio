import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
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
  final _formKey = GlobalKey<FormState>();
  late bool _isSendingEmail = false;

  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
              // TODO: change font family to poppins
              child: SizedBox(
                width: 600,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            "Feel free to contact me by submitting the form below or by sending an email to ",
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                              text: "joffenhopland@gmail.com",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  const toEmail = 'joffenhopland@gmail.com';
                                  final url = Uri.parse("mailto:$toEmail");
                                  print(url);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                })
                        ])),
              ),
            ),
            _form(),
            _isSendingEmail
                ? Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor.withOpacity(0.5),
                        ),
                        onPressed: () {},
                        child: const SizedBox(
                            height: 40,
                            width: 120,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: Colors.white,
                            )))),
                  )
                : Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: CTAButton1(
                      // isSending: _isSendingEmail,
                      text: 'Send',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _isSendingEmail = true;
                          sendEmail(
                              name: controllerName.text,
                              email: controllerEmail.text,
                              subject: controllerSubject.text,
                              message: controllerMessage.text);
                        }
                      },
                    ),
                  ),
          ],
        ));
  }

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    setState(() {
      _isSendingEmail = true;
    });
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
    if (response.statusCode == 200) {
      print('Response code: ${response.statusCode}');
      print('Response code: ${response.body}');
      controllerName.clear();
      controllerEmail.clear();
      controllerSubject.clear();
      controllerMessage.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email sent successfully!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      print('Response code: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${response.statusCode}. Email not sent!'),
          backgroundColor: Colors.amber,
        ),
      );
    }
    setState(() {
      _isSendingEmail = false;
    });
  }

  Widget _form() {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            children: [
              _buildTextField(title: 'Name', controller: controllerName),
              _buildTextField(title: 'Email', controller: controllerEmail),
              _buildTextField(title: 'Subject', controller: controllerSubject),
              _buildTextField(
                  title: 'Message', controller: controllerMessage, maxLines: 8),
            ],
          ),
        ));
  }

  Widget _buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      SizedBox(
        width: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              maxLines: maxLines,
              cursorColor: themeColor,
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: themeColor)),
              ),
            )
          ],
        ),
      );
}
