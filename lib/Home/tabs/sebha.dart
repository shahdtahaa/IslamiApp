import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/colors.dart';
import 'package:provider/provider.dart';

import '../../providers/MyProvider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double _rotationAngle = 0.0;
  List<String> athkar = [
    'سبحان الله',
    'ٱلْحَمْدُ لِلّٰهِ',
    'لَا إِلَٰهَ إِلَّا ٱللَّٰهُ ',
    'الله الْأَكْبَر '
  ];
  int currentzekrIndex = 0;
  int counter = 0;

  void _rotateSebha() {
    setState(() {
      _rotationAngle += 0.3;
      counter++;

      if (counter == 34) {
        counter = 0;
        currentzekrIndex = (currentzekrIndex + 1) % athkar.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Image.asset(
                pro.appTheme==ThemeMode.light?
                'assets/images/headOfSeb7a.png'
                :
                'assets/images/headofseb7a_dark.png'
                ,
                width: 100,
                height: 120,
              ),
            ),
            Center(
              child: Transform.rotate(
                angle: _rotationAngle,
                child: Image.asset(
                  pro.appTheme==ThemeMode.light?
                  'assets/images/body of seb7a.png'
                  :
                  'assets/images/BodyOfSebha_dark.png'
                  ,
                  width: 300,
                  height: 400,
                ),
              ),
            ),
          ],
        ),
        Text(
         'praises'.tr(),
          style:
          Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600)
        ),
        SizedBox(height: 30,),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 25, color:pro.appTheme==ThemeMode.light?
                AppColors.primaryColor.withOpacity(0.5)
                    :
                AppColors.Darkprimary.withOpacity(0.5))),
            child: Text(
              "$counter",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                backgroundColor:
                pro.appTheme==ThemeMode.light?
                AppColors.primaryColor.withOpacity(0.5)
                :
                AppColors.Darkprimary.withOpacity(0.5)
                ,
              ),
            )),
        SizedBox(height: 30,),
         ElevatedButton(

            style: ButtonStyle(  backgroundColor: MaterialStateProperty.all<Color>(pro.appTheme==ThemeMode.light?
            AppColors.primaryColor
            :
            AppColors.yellowColor
            )),

            onPressed: _rotateSebha,
            child: Text(athkar[currentzekrIndex],style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w400, color:
            pro.appTheme==ThemeMode.light?
            Colors.white
            :
            Colors.black),),
          ),

      ],
    );
  }
}
