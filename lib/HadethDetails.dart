import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/colors.dart';
import 'package:islami_application/hadethModel.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatelessWidget {
  static const String routeName = 'hadeth details';
  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var pro= Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  pro.appTheme==ThemeMode.light?
                  'assets/images/background.png'
              :
                      'assets/images/home_dark_background.png'
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            color: pro.appTheme==ThemeMode.light?
            Colors.white
                :
                AppColors.Darkprimary
            ,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
              ),
                itemBuilder: (context, index) {
                  return Text(
                    model.content[index],
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color:
                        pro.appTheme==ThemeMode.light?
                            Colors.black
                            :
                            AppColors.yellowColor
                    ),
                    textDirection: TextDirection.rtl,
                  );
                },
                itemCount: model.content.length),
          ),
        ),
      ),
    );
  }
}
