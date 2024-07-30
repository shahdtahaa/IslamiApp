import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/Home/tabs/ahadeth.dart';
import 'package:islami_application/Home/tabs/quran.dart';
import 'package:islami_application/Home/tabs/radio.dart';
import 'package:islami_application/Home/tabs/sebha.dart';
import 'package:islami_application/Home/tabs/settings.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'Home Screen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            pro.appTheme==ThemeMode.light?
              'assets/images/background.png'
                :
                'assets/images/home_dark_background.png'
          ),
        )),
        child: Scaffold(

          appBar: AppBar(
            title: Text(
              'islami'.tr(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold, fontSize: 32
              )
            ),
             // titleTextStyle:Theme.of(context).appBarTheme.titleTextStyle,
          ),

          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index) {
                selectedindex = index;
                setState(() {});
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,

              items:const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png'),
                        size: 35),

                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                        size: 35),

                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png'),
                        size: 35),

                    label: 'quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/moshaf.png'),
                      size: 35,
                    ),

                    label: 'moshaf'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 35,
                    ),

                    label: 'moshaf'),
              ]),
          body: tabs[selectedindex],
        ));
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab()
  ];
}
