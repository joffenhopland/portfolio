import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

import 'app_bar/app_bar_items.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joffen Hopland Portfolio',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


