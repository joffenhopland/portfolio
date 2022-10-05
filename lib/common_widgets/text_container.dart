import 'package:flutter/material.dart';

import '../common/config.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(3)),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
