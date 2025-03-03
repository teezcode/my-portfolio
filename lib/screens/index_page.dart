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
  double desktopScreenWidth = 1440.0;
  double tabScreenWidth = 834.00;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    //final screenHeight = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xff090E18),
          endDrawer: constraints.maxWidth >= desktopScreenWidth
              ? null
              : const MobileDrawer(),
          body: Container(
            decoration: BoxDecoration(
                color: const Color(0xff1A293F).withOpacity(0.2),
                image: const DecorationImage(
                    image: AssetImage('images/BG.png'), fit: BoxFit.cover)),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                constraints.maxWidth >= desktopScreenWidth
                ? const HeaderDesktop()
                : constraints.maxWidth >= tabScreenWidth
                ? const HeaderTab()
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
                const DesktopMiddle() :  constraints.maxWidth >= tabScreenWidth ?
                const TabMiddle() : const MobileMiddle(),
                constraints.maxWidth >= desktopScreenWidth ?
                const DesktopProjects() :  constraints.maxWidth >= tabScreenWidth ?
                const TabProjects() : const MobileProjects(),
                constraints.maxWidth >= desktopScreenWidth ?
                const HireSectionDesktop() :  constraints.maxWidth >= tabScreenWidth ?
                const HireSectionTab() : const HireSectionMobile(),
              ],
            ),
          ),
        );
      },
    );
  }
}


