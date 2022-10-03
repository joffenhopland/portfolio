import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

class AppBarItems extends StatefulWidget {
  const AppBarItems({Key? key}) : super(key: key);

  @override
  State<AppBarItems> createState() => _AppBarItemsState();
}

class _AppBarItemsState extends State<AppBarItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 2, bottom: 2),
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.antiAlias,
                  child: Material(
                    color: Colors.black87,
                    child: const ButtonBar(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 24.0),
                          child: Text(
                            "JH",
                            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // TODO: add ankers to menu items
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "About",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        /*IconButton(
                          // TODO: Add email address link
                          onPressed: () {},
                          icon: const Icon(Icons
                              .email),
                        ),
                        // TODO: Align email to the right
                        const Text(
                          'joffenhopland@gmail.com',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )*/
                      ],
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
