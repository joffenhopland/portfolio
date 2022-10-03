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
      // color: Colors.black87,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "JH",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),

                // TODO: add ankers to menu items
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Projects",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "About",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
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
            )
          ],
        ),
      ),
    );
  }
}
