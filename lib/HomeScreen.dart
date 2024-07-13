import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(
            child: Text('إسلامي',
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w700,
                  fontSize: 30
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(

            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset('assets/images/background.png',
                  fit: BoxFit.fill,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(child: Image.asset('assets/images/moshaf photo.png')),
                  )
                ],
              )
            ]
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

              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf Stand.png'),size: 35,)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'moshaf'),

              BottomNavigationBarItem(icon:Icon( Icons.settings,size: 35,)
                  ,backgroundColor: Color(0xffB7935F),
                  label: 'moshaf'),

            ]),

      );

  }
}
