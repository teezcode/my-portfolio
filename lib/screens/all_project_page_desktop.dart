import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/HeaderTab.dart';
import '../widgets/all_project_widget_desktop.dart';
import '../widgets/all_project_widget_tabb.dart';
import '../widgets/all_projects_widget_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/mobile_drawer.dart';

class AllProjectPageDesktop extends StatefulWidget {
  const AllProjectPageDesktop({super.key});

  @override
  State<AllProjectPageDesktop> createState() => _AllProjectPageDesktopState();
}

class _AllProjectPageDesktopState extends State<AllProjectPageDesktop> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    double desktopScreenWidth = 1440.0;
    double tabScreenWidth = 834.00;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xff090E18),
          endDrawer: constraints.maxWidth >= desktopScreenWidth
              ? null
              : MobileDrawer(onNavMenuTap:(int navIndex){

          }),
          body: Container(
            decoration: BoxDecoration(
                color: const Color(0xff1A293F).withOpacity(0.2),
                image: const DecorationImage(
                    image: AssetImage('images/BG.png'), fit: BoxFit.cover)),
            child: Column(
              //scrollDirection: Axis.vertical,
              children: [
                constraints.maxWidth >= desktopScreenWidth
                    ? HeaderDesktop(onNavItemTap:(int navIndex){

                } )
                    : constraints.maxWidth >= tabScreenWidth
                        ?  HeaderTab(onNavMenuTap:(int navIndex){
                  //scrollToSection(navIndex);
                })
                        : HeaderMobile(
                            onMenuTap: () {
                              scaffoldKey.currentState?.openEndDrawer();
                            },
                            onLogoTap: () {},
                          ),
                Expanded(
                  child: constraints.maxWidth >= desktopScreenWidth
                      ? const AllProjectWidgetDesktop()
                      : constraints.maxWidth >= tabScreenWidth
                          ? const AllProjectWidgetTab()
                          : const AllProjectsWidgetMobile(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
