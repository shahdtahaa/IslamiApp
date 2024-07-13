import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home/HomeScreen.dart';


class Splashscreen extends StatefulWidget {
  static const String routeName ='splashScreen';
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState(){
    Future.delayed(Duration(seconds: 6),
            (){

              Navigator.pushReplacementNamed(context, Homescreen.routeName);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Spacer(),
              Center(child: Image.asset('assets/images/logo2.png')),
              Spacer(),
              Center(child: Image.asset('assets/images/routegold.png')),
            ]
        )
    );
  }
}
