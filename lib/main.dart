import 'package:flutter/material.dart';
import 'package:news_app/ui/home/home_screen.dart';
import 'package:news_app/ui/splash/splash_screen.dart';

void main(){
runApp(MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        splashScreen.routeName : (context) => splashScreen(),
        homeScreen.routeName : (context) => homeScreen(),
      },
      initialRoute: splashScreen.routeName ,
    );
  }

}