import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/Home/tabs/ahadeth.dart';
import 'package:islami_application/Home/tabs/quran.dart';
import 'package:islami_application/Home/tabs/radio.dart';
import 'package:islami_application/Home/tabs/sebha.dart';
import 'package:islami_application/Home/tabs/settings.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'Home Screen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex=0;

    @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
          Image.asset('assets/images/background.png'),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text('إسلامي', style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              height: 46.89
            ),
            )
              ),
      bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index){
              selectedindex=index;
              setState(() {


              });

            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),size: 35)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'Radio'),

              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),size: 35)
                  ,backgroundColor: Color(0xffB7935F),
                  label:'sebha' ),

              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),size: 35)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'quran'),

              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf.png'),size: 35,)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'moshaf'),

              BottomNavigationBarItem(icon:Icon( Icons.settings,size: 35,)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'moshaf'),

            ]),
            body: tabs[selectedindex],
          )
        ],
      );


  }
  List<Widget> tabs=[
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab()
  ];
}
