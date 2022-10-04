import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';

import '../common_widgets/cta_button_1.dart';
import '../common_widgets/cta_button_2.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 850) {
        return Container(
          color: themeBackgroundColor1,
          width: double.infinity,
          height: 1000,
          child: const Text("Mobile"),
        );
      } else {
        return Container(
          color: themeBackgroundColor1,
          width: double.infinity,
          height: 1500,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  "Projects",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          color: Colors.blue,
                        ),
                        const Text(
                          "HTML, CSS, Javacript, MongoDb osv...",
                          style: TextStyle(color: themeColor),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "YelpCamp",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Text about the project here...",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CTAButton1(
                              text: "Live Demo",
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            CTAButton2(text: "View the code")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "YelpCamp",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Text about the project here...",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CTAButton1(
                              text: "Live Demo",
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            CTAButton2(text: "View the code")
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          color: Colors.blue,
                        ),
                        const Text(
                          "HTML, CSS, Javacript, MongoDb osv...",
                          style: TextStyle(color: themeColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          color: Colors.blue,
                        ),
                        const Text(
                          "HTML, CSS, Javacript, MongoDb osv...",
                          style: TextStyle(color: themeColor),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "YelpCamp",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Text about the project here...",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CTAButton1(
                              text: "Live Demo",
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            CTAButton2(text: "View the code")
                          ],
                        ),
                      ],
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
