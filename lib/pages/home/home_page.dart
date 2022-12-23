import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/responsive.dart';
import 'package:flutter_web/helpers/style.dart';
import 'package:flutter_web/pages/home/widgets/desktop.dart';
import 'package:flutter_web/pages/home/widgets/mobile.dart';
import 'package:flutter_web/widgets/drawer.dart';
import 'package:flutter_web/widgets/navbar_mobile.dart';

import '../../widgets/navbar_desktop.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      drawer: const SideMenu(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? mobileNavBar(scaffoldKey)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: const NavBar(),
            ),
      body: ResponsiveWidget(
        largeScreen: DesktopScreen(),
        smallScreen: MobileScreen(),
        mediumScreen: MobileScreen(),
      ),
    );
  }
}
