import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 850) {
          return Container(
            color: Colors.black87,
            width: double.infinity,
            height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.asset(
                          'assets/images/headshot.jpeg',
                          scale: 4.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Joffen Hopland",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                    ),
                    LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth < 500) {
                        return Column(
                          children: const [
                            Text(
                              "Software",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Developer",
                              style: TextStyle(
                                  color: themeColor,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Software ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Developer",
                              style: TextStyle(
                                  color: themeColor,
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                    }
                    }),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "I specialize in web, iOS and Android web development",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          const SizedBox(
                            width: 32,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  side: const BorderSide(
                                    width: 2.0,
                                    color: themeColor,
                                  )),
                              onPressed: () {},
                              child: const SizedBox(
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
              ],
            ),
          );
        } else {
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
                          const SizedBox(
                            width: 32,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  side: const BorderSide(
                                    width: 2.0,
                                    color: themeColor,
                                  )),
                              onPressed: () {},
                              child: const SizedBox(
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
      },
    );
  }
}
