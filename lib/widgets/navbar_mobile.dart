import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/style.dart';

mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu, color: active),
        onPressed: () {
          key.currentState!.openDrawer();
        },
      ),
      title: Image.asset("assets/images/logo.png"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: bgColor,
    );
