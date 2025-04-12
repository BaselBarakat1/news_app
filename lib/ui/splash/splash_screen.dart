import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/ui/home/home_screen.dart';

class splashScreen extends StatefulWidget {
static const String routeName = 'splash_screen';

  @override
  State<splashScreen> createState() => _splashScreenState();
}
class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, homeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            color: Colors.white,
            child: Image.asset('assets/images/pattern.png',
              width: double.infinity,
              height:double.infinity,
              fit:BoxFit.fill ,)),
        Image.asset('assets/images/logo.png'),
      ],
    );
  }
}
