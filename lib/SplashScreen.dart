import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:provider/provider.dart';
import 'Home/HomeScreen.dart';


class Splashscreen extends StatefulWidget {
  static const String routeName ='splashScreen';
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  void initState(){
    Future.delayed(Duration(seconds: 3),
            (){

              Navigator.pushReplacementNamed(context, Homescreen.routeName);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
            children: [
              Spacer(),
              Center(child: Image.asset(
                  pro.appTheme==ThemeMode.light?
                  'assets/images/logo2.png'
                      :
                      'assets/images/splashLogo_dark.png'
              )),
              Spacer(),
              Center(child: Image.asset(
                pro.appTheme==ThemeMode.dark?
                  'assets/images/routegold.png'
                    :
                    'assets/images/routeyellow.png'
              )),
            ]
        )
    );
  }
}
