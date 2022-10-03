import 'package:flutter/material.dart';

import '../common/config.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

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
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('Projects')),
            onTap: () {
              Navigator.pop(context);
            },
          ),
         /* ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('About')),
            onTap: () {
              Navigator.pop(context);
            },
          ),*/
          ListTile(
            hoverColor: themeColor,
            textColor: Colors.white,
            title: const Center(child: Text('Contact')),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
