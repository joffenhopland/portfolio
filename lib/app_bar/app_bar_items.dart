import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/home_page.dart';

class AppBarItems extends StatefulWidget {
  final GlobalKey? anchorScrollKey;

  const AppBarItems({Key? key, required this.anchorScrollKey})
      : super(key: key);

  @override
  State<AppBarItems> createState() => _AppBarItemsState();
}

class _AppBarItemsState extends State<AppBarItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 1,
              ),
              // TODO: add ankers to menu items
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        if (widget.anchorScrollKey?.currentState != null) {
                          (widget.anchorScrollKey?.currentState
                                  as HomePageState)
                              .scrollToItem(0);
                        }
                      },
                      child: const Text("Home"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        if (widget.anchorScrollKey?.currentState != null) {
                          (widget.anchorScrollKey?.currentState
                                  as HomePageState)
                              .scrollToItem(1);
                        }
                      },
                      child: const Text("Projects"),
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "About",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        if (widget.anchorScrollKey?.currentState != null) {
                          (widget.anchorScrollKey?.currentState
                                  as HomePageState)
                              .scrollToItem(2);
                        }
                      },
                      child: const Text("Contact"),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
