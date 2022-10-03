import 'package:flutter/material.dart';

import '../common/config.dart';

class CTAButton2 extends StatefulWidget {
  const CTAButton2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<CTAButton2> createState() => _CTAButton2State();
}

class _CTAButton2State extends State<CTAButton2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: const BorderSide(
              width: 2.0,
              color: themeColor,
            )),
        onPressed: () {},
        child: SizedBox(
            height: 40,
            width: 120,
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(
                    color: themeColor,
                    fontWeight: FontWeight.bold),
              ),
            )));
  }
}
