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
      if (constraints.maxWidth < 945) {
        return Container(
          color: themeBackgroundColor1,
          width: double.infinity,
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
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Column(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: TextContainer(text: "  Javacript  "),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 4.0),
                          //   child: TextContainer(text: "  Bootstrap  "),
                          // ),
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          "YelpCamp is website that lets users create and review campgrounds. In order to review, create, edit or delete a campground, the user needs to log in or create an account. Authentication is handled using Passport.js.",
                          style: TextStyle(
                              color: Colors.white, fontSize: 16, height: 1.6),
                          textAlign: TextAlign.center,
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
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Column(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/tip-calc-mockup.jpeg',
                            scale: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Flutter  "),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Easy Tip Calculator",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        const Text(
                          "The Easy Tip Calculator is a cross platform web, iOS and Android application written in Flutter. It lets the user calculate the total tip, total bill, tip per person, and total per person by typing in the bill amount, number of people to split the bill and the desired tip percentage.",
                          style: TextStyle(
                              color: Colors.white, fontSize: 16, height: 1.6),
                          textAlign: TextAlign.center,
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
                                      "https://tip-calculator.codemagic.app/#/");
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
                                      "https://github.com/joffenhopland/tip-calculator");
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                child: Column(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/cms-mockup.jpeg',
                            scale: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: TextContainer(text: "  Python  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Flask  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  MySQL  "),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: TextContainer(text: "  MariaDB  "),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Content Management System",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        const Text(
                          "This CMS lets users create folders, upload, edit and delete files, post and delete comments, categorize files based on tags, and search for files. When uploading a file, the user can decide whether to make the file accessible for all, or only registered users. Email verification is used to verify users registering for an account. The focus on this project was database design, backend development, security and authentication.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.6),
                          textAlign: TextAlign.center,
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
                                      "https://kark.uit.no/~kpe144/flask_prosjekt/home");
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
                                      "https://github.com/joffenhopland/CMS---Python-Flask");
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                },
                              )
                            ],
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
          color: themeBackgroundColor1,
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  "Projects",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
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
                          const SizedBox(
                            width: 600,
                            child: Text(
                              "YelpCamp is website that lets users create and review campgrounds. In order to review, create, edit or delete a campground, the user needs to log in or create an account. Authentication is handled using Passport.js.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.6),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "Easy Tip Calculator",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          const SizedBox(
                            width: 600,
                            child: Text(
                              "The Easy Tip Calculator is a cross platform web, iOS and Android application written in Flutter. It lets the user calculate the total tip, total bill, tip per person, and total per person by typing in the bill amount, number of people to split the bill and the desired tip percentage.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.6),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CTAButton1(
                                  text: "Live Demo",
                                  onPressed: () async {
                                    final url = Uri.parse(
                                        "https://tip-calculator.codemagic.app/#/");
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
                                        "https://github.com/joffenhopland/tip-calculator");
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/tip-calc-mockup.jpeg',
                            scale: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Flutter  "),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/cms-mockup.jpeg',
                            scale: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: TextContainer(text: "  Python  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  Flask  "),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextContainer(text: "  MySQL  "),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: TextContainer(text: "  MariaDB  "),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "Content Management System",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          const SizedBox(
                            width: 600,
                            child: Text(
                              "This CMS lets users create folders, upload, edit and delete files, post and delete comments, categorize files based on tags, and search for files. When uploading a file, the user can decide whether to make the file accessible for all, or only registered users. Email verification is used to verify users registering for an account. The focus on this project was database design, backend development, security and authentication.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.6),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CTAButton1(
                                  text: "Live Demo",
                                  onPressed: () async {
                                    final url = Uri.parse(
                                        "https://kark.uit.no/~kpe144/flask_prosjekt/home");
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
                                        "https://github.com/joffenhopland/CMS---Python-Flask");
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                )
                              ],
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
