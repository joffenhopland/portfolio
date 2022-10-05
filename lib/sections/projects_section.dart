import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/common_widgets/text_container.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/yelpcamp-mockup.jpeg',
                            scale: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: TextContainer(text: "  Javacript  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Bootstrap  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  MongoDB  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Node.js  "),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: TextContainer(text: "  Express  "),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "YelpCamp",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        const Text(
                          "YelpCamp is website that lets users create and review campgrounds. \nIn order to review, create, edit or delete a campground, the user needs to \nlog in or create an account. Authentication is handled using Passport.js. ",
                          style: TextStyle(
                              color: Colors.white, fontSize: 16, height: 1.6),
                          textAlign: TextAlign.end,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CTAButton1(
                                text: "Live Demo",
                                onPressed: () async {
                                  final url = Uri.parse(
                                      "https://shrouded-castle-36385.herokuapp.com/");
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                },
                              ),
                              const SizedBox(
                                width: 32,
                              ),
                              CTAButton2(
                                text: "View the code",
                                onPressed: () async {
                                  final url = Uri.parse(
                                      "https://github.com/joffenhopland/yelpcamp.git");
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                },
                              )
                            ],
                          ),
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
                            const SizedBox(
                              width: 32,
                            ),
                            CTAButton2(text: "View the code", onPressed: () {  },)
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
                            const SizedBox(
                              width: 32,
                            ),
                            CTAButton2(text: "View the code", onPressed: () {  },)
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
