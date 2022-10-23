import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

import '../common_widgets/cta_button_1.dart';
import '../common_widgets/cta_button_2.dart';
import '../home_page.dart';

class AboutSection extends StatefulWidget {
  final GlobalKey? anchorScrollKey;

  const AboutSection({Key? key, required this.anchorScrollKey})
      : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 945) {
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  "About me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              child: Text(
                                "Hi! 👋 My name is Jon-Fredrik Hopland, but you can call me Joffen 😊",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.6),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const SizedBox(
                              child: Text(
                                "I enjoy combining creativity and critical thinking to create solutions that solve problems and make people’s lives easier. I view programming both as a tool and an art form.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.6),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const SizedBox(
                              child: Text(
                                "Besides learning programming through my computer science degree and online courses, I have aquired professional experience in both frontend and backend, developing web, iOS and Android apps, writing APIs, creating databases and utilizing cloud computing platforms. ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.6),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const SizedBox(
                              child: Text(
                                "When I’m not coding, I’m either playing the drums, DJing, working out, or spending time with family and friends. ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.6),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40.0, bottom: 48),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CTAButton1(
                                    text: "View Projects",
                                    onPressed: () {
                                      if (widget
                                              .anchorScrollKey?.currentState !=
                                          null) {
                                        (widget.anchorScrollKey?.currentState
                                                as HomePageState)
                                            .scrollToItem(1);
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 32,
                                  ),
                                  CTAButton2(
                                    text: "Contact Me",
                                    onPressed: () {
                                      if (widget
                                              .anchorScrollKey?.currentState !=
                                          null) {
                                        (widget.anchorScrollKey?.currentState
                                                as HomePageState)
                                            .scrollToItem(3);
                                      }
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 40, left: 16, right: 16),
                child: Column(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Text(
                            "Skills",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: themeColor.withOpacity(0.02),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• HTML",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• CSS",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• Javascript",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• Node.js",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• Python",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• Flutter",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "• SQL",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
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
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Text(
                              "About me",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        "Hi! 👋 My name is Jon-Fredrik Hopland, but you can call me Joffen 😊",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            height: 1.6),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const SizedBox(
                                      child: Text(
                                        "I enjoy combining creativity and critical thinking to create solutions that solve problems and make people’s lives easier. I view programming both as a tool and an art form.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            height: 1.6),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const SizedBox(
                                      child: Text(
                                        "Besides learning programming through my computer science degree and online courses, I have aquired professional experience in both frontend and backend, developing web, iOS and Android apps, writing APIs, creating databases and utilizing cloud computing platforms. ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            height: 1.6),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const SizedBox(
                                      child: Text(
                                        "When I’m not coding, I’m either playing the drums, DJing, working out, or spending time with family and friends. ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            height: 1.6),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40.0, bottom: 48),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CTAButton1(
                                            text: "View Projects",
                                            onPressed: () {
                                              if (widget.anchorScrollKey
                                                      ?.currentState !=
                                                  null) {
                                                (widget.anchorScrollKey
                                                            ?.currentState
                                                        as HomePageState)
                                                    .scrollToItem(1);
                                              }
                                            },
                                          ),
                                          const SizedBox(
                                            width: 32,
                                          ),
                                          CTAButton2(
                                            text: "Contact Me",
                                            onPressed: () {
                                              if (widget.anchorScrollKey
                                                      ?.currentState !=
                                                  null) {
                                                (widget.anchorScrollKey
                                                            ?.currentState
                                                        as HomePageState)
                                                    .scrollToItem(3);
                                              }
                                            },
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Text(
                              "Skills",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: themeColor.withOpacity(0.02),
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• HTML",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• CSS",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• Javascript",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• Node.js",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• Python",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• Flutter",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "• SQL",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
