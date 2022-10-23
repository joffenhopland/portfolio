import 'package:flutter/material.dart';

import '../common/config.dart';
import '../home_page.dart';

class EndDrawer extends StatelessWidget {
  final GlobalKey? anchorScrollKey;

  const EndDrawer({Key? key, required this.anchorScrollKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: themeBackgroundColor1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('Home')),
            onTap: () {
              if (anchorScrollKey?.currentState != null) {
                (anchorScrollKey?.currentState
                as HomePageState)
                    .scrollToItem(0);
              }
              Navigator.pop(context);
            },
          ),
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('Projects')),
            onTap: () {
              if (anchorScrollKey?.currentState != null) {
                (anchorScrollKey?.currentState
                as HomePageState)
                    .scrollToItem(1);
              }
              Navigator.pop(context);
            },
          ),
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('About')),
            onTap: () {
              if (anchorScrollKey?.currentState != null) {
                (anchorScrollKey?.currentState
                as HomePageState)
                    .scrollToItem(2);
              }
              Navigator.pop(context);
            },
          ),
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('Contact')),
            onTap: () {
              if (anchorScrollKey?.currentState != null) {
                (anchorScrollKey?.currentState
                as HomePageState)
                    .scrollToItem(3);
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
