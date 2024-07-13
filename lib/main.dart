import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home/HomeScreen.dart';
import 'SplashScreen.dart';
import 'SurahDetails.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Splashscreen.routeName,
        routes: {
          Splashscreen.routeName: (context)=>Splashscreen(),
          Homescreen.routeName:(context) => Homescreen(),
          Surahdetails.routeName:(context) => Surahdetails()

        }
    );
  }
}