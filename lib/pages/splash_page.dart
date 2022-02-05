import 'dart:async';

import 'package:flutter/material.dart';
import 'package:triptonic/pages/menu_page.dart';
import 'package:triptonic/style.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorprimary,
      body: Center(
        child: Image.asset(
          "asset/images/splash_bg.png",
        ),
      ),
    );
  }
}
