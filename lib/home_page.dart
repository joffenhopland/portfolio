import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/drawers/end_drawer.dart';
import 'package:joffen_hopland_portfolio/sections/contact_section.dart';
import 'package:joffen_hopland_portfolio/sections/home_section.dart';
import 'package:joffen_hopland_portfolio/sections/projects_section.dart';

import 'app_bar/app_bar_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    print(width);
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 850) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: themeBackgroundColor1,
                  leading: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),                    child: Text(
                      "JH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    ),
                  ),
                ),
                endDrawer: EndDrawer(),
                body: SingleChildScrollView(
                  child: Column(
                    children: const [
                      HomeSection(),
                      ProjectsSection(),
                      // TODO: Make about section
                      // AboutSection(),
                      // TODO: Make contact section
                      // ContactSection(),
                    ],
                  ),
                )
            );
          } else {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: themeBackgroundColor1,
                  title: const AppBarItems(),
                  leading: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),                    child: Text(
                      "JH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: const [
                      HomeSection(),
                      ProjectsSection(),
                      // TODO: Make about section
                      // AboutSection(),
                      // TODO: Make contact section
                      ContactSection(),
                    ],
                  ),
                )
            );

          }
        });
  }
}