import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/SurahModel.dart';
import 'package:islami_application/colors.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:islami_application/providers/surahDetailsProvider.dart';
import 'package:provider/provider.dart';

class Surahdetails extends StatelessWidget {
  static const String routeName = 'surah details';

   Surahdetails({super.key});

  @override
  Widget build(BuildContext context) {
    var Model = ModalRoute
        .of(context)
        ?.settings
        .arguments as surahModel;

    return ChangeNotifierProvider(
      create:  (context) => SurahDetialsProvider()..loadSurahFiles(Model.index),
      builder: (context, child) {
        var pro= Provider.of<SurahDetialsProvider>(context);
        var proo = Provider.of<MyProvider>(context);
        if (pro.versus.isEmpty) {
          pro.loadSurahFiles(Model.index);
        }
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    proo.appTheme==ThemeMode.light?
                      'assets/images/background.png'
                  :
                        'assets/images/home_dark_background.png'
                  ),
                )),
            child: Scaffold(
              appBar: AppBar(
                title: Text(Model.name),
              ),
              body: Card(
                margin: EdgeInsets.all(25),
                color:
                proo.appTheme==ThemeMode.light?
                Colors.white
                :
                AppColors.Darkprimary,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      "${pro.versus[index]}(${index + 1})",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium?.copyWith(
                        color: AppColors.yellowColor
                      ),
                      textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: pro.versus.length,
                ),
              ),
            )
        );
      },

    );
  }

}
