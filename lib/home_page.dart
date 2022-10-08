import 'package:flutter/material.dart';
import 'package:joffen_hopland_portfolio/common/config.dart';
import 'package:joffen_hopland_portfolio/drawers/end_drawer.dart';
import 'package:joffen_hopland_portfolio/sections/contact_section.dart';
import 'package:joffen_hopland_portfolio/sections/home_section.dart';
import 'package:joffen_hopland_portfolio/sections/projects_section.dart';
import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'app_bar/app_bar_items.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';


class HomePage extends StatefulWidget {
  final GlobalKey? anchorScrollKey;

  const HomePage({Key? key, required this.anchorScrollKey})
      : super(key: anchorScrollKey);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<Widget> _sections = <Widget>[
    const HomeSection(),
    const ProjectsSection(),
    const ContactSection()
  ];

  late final AnchorScrollController scrollController;
  TabController? _tabController;
  
  static IndexedScrollController controller = IndexedScrollController();

  final ItemScrollController itemScrollController = ItemScrollController();
  
  Future scrollToItem(index) async {
    itemScrollController.jumpTo(index: index);
  }


  @override
  void initState() {
    super.initState();

    scrollController = AnchorScrollController(
      onIndexChanged: (index, value) {
        print(index);
        _tabController?.animateTo(
          index,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 945) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: themeBackgroundColor1,
              leading: const Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),
                  child: Text(
                    "JH",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            endDrawer: const EndDrawer(),
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  HomeSection(),
                  ProjectsSection(),
                  // TODO: Make about section
                  // AboutSection(),
                  ContactSection(),
                ],
              ),
            ));
      } else {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: themeBackgroundColor1,
            title: AppBarItems(anchorScrollKey: widget.anchorScrollKey),
            leading: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 3, bottom: 3, left: 2, right: 2),
                child: Text(
                  "JH",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          /*body: SingleChildScrollView(
                  child: Column(
                    children: const [
                      HomeSection(),
                      ProjectsSection(),
                      // TODO: Make about section
                      // AboutSection(),
                      ContactSection(),
                    ],
                  ),
                )*/
          body: ScrollablePositionedList.builder(
            itemCount: _sections.length,
              itemScrollController: itemScrollController,
              itemBuilder: (BuildContext context, int index) {
                return _sections[index];
              }),
        );
      }
    });
  }
}
