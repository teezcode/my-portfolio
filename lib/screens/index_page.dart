import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/HeaderTab.dart';
import 'package:my_portfolio/widgets/mobile_header.dart';
import '../widgets/desktop_middle.dart';
import '../widgets/desktop_projects.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/hire_section_desktop.dart';
import '../widgets/hire_section_mobile.dart';
import '../widgets/hire_section_tab.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_tab.dart';
import '../widgets/mobile_drawer.dart';
import '../widgets/mobile_middle.dart';
import '../widgets/mobile_projects.dart';
import '../widgets/tab_middle.dart';
import '../widgets/tab_projects.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(3, (index) => GlobalKey());

  double desktopScreenWidth = 1440.0;
  double tabScreenWidth = 834.00;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xff090E18),
          endDrawer: constraints.maxWidth >= desktopScreenWidth
              ? null
              :  MobileDrawer(onNavMenuTap:(int navIndex){
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          } ,),
          body: Container(
            decoration: BoxDecoration(
                color: const Color(0xff1A293F).withOpacity(0.2),
                image: const DecorationImage(
                    image: AssetImage('images/BG.png'), fit: BoxFit.cover)),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  constraints.maxWidth >= desktopScreenWidth
                  ? HeaderDesktop(onNavItemTap:(int navIndex){
                    scrollToSection(navIndex);
                  } )
                  : constraints.maxWidth >= tabScreenWidth
                  ?  HeaderTab(onNavMenuTap:(int navIndex){
                    scrollToSection(navIndex);
                  })
                  : HeaderMobile(
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                onLogoTap: () {},
              ),
                  constraints.maxWidth >= desktopScreenWidth ?
                    const MainDesktop() :  constraints.maxWidth >= tabScreenWidth ?
                    const MainTab() : const MobileHeader(),
                  constraints.maxWidth >= desktopScreenWidth ?
                  DesktopMiddle(key:navbarKeys[0]) :  constraints.maxWidth >= tabScreenWidth ?
                   TabMiddle(key:navbarKeys[0]) : MobileMiddle(key:navbarKeys[0]),
                  constraints.maxWidth >= desktopScreenWidth ?
                  DesktopProjects(key:navbarKeys[1]) :  constraints.maxWidth >= tabScreenWidth ?
                  TabProjects(key:navbarKeys[1]) : MobileProjects(key:navbarKeys[1]),
                  constraints.maxWidth >= desktopScreenWidth ?
                   HireSectionDesktop(key:navbarKeys[2]) :  constraints.maxWidth >= tabScreenWidth ?
                   HireSectionTab(key:navbarKeys[2]) :  HireSectionMobile(key:navbarKeys[2]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex){
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(milliseconds: 500),curve: Curves.easeInExpo);
  }
}


