import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/home_section.dart';

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
                  backgroundColor: Colors.black87,
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
                endDrawer: Drawer(
                  backgroundColor: Colors.black87,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        hoverColor: themeColor,
                        textColor: Colors.white,
                        title: Center(child: const Text('Home')),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        hoverColor: themeColor,
                        textColor: Colors.white,
                        title: Center(child: const Text('Projects')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        hoverColor: themeColor,
                        textColor: Colors.white,
                        title: Center(child: const Text('About')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        hoverColor: themeColor,
                        textColor: Colors.white,
                        title: Center(child: const Text('Contact')),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: const [
                      HomeSection(),
                      // ProjectsSection(),
                    ],
                  ),
                )
            );
          } else {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black87,
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
                    ],
                  ),
                )
            );

          }
        });
  }
}