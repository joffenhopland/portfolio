import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/common_widgets/cta_button_1.dart';
import 'package:joffen_hopland_portfolio/common_widgets/cta_button_2.dart';

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
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  themeBackgroundColor1,
                  themeBackgroundColor2,
                ])),
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
                        children: const [
                          // CTAButton1(text: "View Projects"),
                          SizedBox(
                            width: 32,
                          ),
                          CTAButton2(text: "Contact Me")
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
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  themeBackgroundColor1,
                  themeBackgroundColor2,
                ])),
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
                        children: const [
                          // CTAButton1(text: "View Projects"),
                          SizedBox(
                            width: 32,
                          ),
                          CTAButton2(text: "Contact Me")
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