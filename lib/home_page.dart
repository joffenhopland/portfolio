import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/home_section.dart';

import 'app_bar/app_bar_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarItems(),
      ),
      body: Column(
        children: [
          HomeSection(),
        ],
      )
    );
  }
}