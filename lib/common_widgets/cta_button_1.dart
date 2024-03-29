import 'package:flutter/material.dart';

import '../common/config.dart';

class CTAButton1 extends StatefulWidget {
  CTAButton1({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  void Function() onPressed;

  @override
  State<CTAButton1> createState() => _CTAButton1State();
}

class _CTAButton1State extends State<CTAButton1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: themeColor,
        ),
        onPressed: widget.onPressed,
        child: SizedBox(
            height: 40,
            width: 120,
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            )));
  }
}
