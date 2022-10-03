import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: double.infinity,
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Joffen Hopland",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    "Software ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(
                        color: themeColor,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "I specialize in web, iOS and Android web development",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor,
                        ),
                        onPressed: () {},
                        child: const SizedBox(
                            height: 40,
                            width: 120,
                            child: Center(
                              child: Text(
                                "View Projects",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))),
                    SizedBox(
                      width: 32,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                              width: 2.0,
                              color: themeColor,
                            )),
                        onPressed: () {},
                        child: SizedBox(
                            height: 40,
                            width: 120,
                            child: Center(
                              child: Text(
                                "Contact Me",
                                style: TextStyle(
                                    color: themeColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )))
                  ],
                ),
              )
            ],
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    'assets/images/headshot.jpeg',
                    scale: 3,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
