import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/colors.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro= Provider.of<MyProvider>(context);
    return Container(

      padding: const EdgeInsets.all(16),
      //height: MediaQuery.of(context).size.height* 0.5,
      decoration: BoxDecoration(
        color: pro.appTheme==ThemeMode.light?
            Colors.white
            :
            AppColors.Darkprimary
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height:18),
      InkWell(
        onTap: (){
          pro.changeTheme(ThemeMode.light);
          Navigator.pop(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Text("light".tr(), style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color:
            pro.appTheme==ThemeMode.light ?
            AppColors.primaryColor
                :
            Colors.white
        ),),
        Icon(Icons.done, size: 35,color:
        pro.appTheme==ThemeMode.light?
        AppColors.primaryColor:
          Colors.transparent,
        )
          ],
        ),
      ),
           SizedBox(height: 12,),
           InkWell(
             onTap: (){
               pro.changeTheme(ThemeMode.dark);
               Navigator.pop(context);
             },
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("dark".tr(), style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                   color:
                   pro.appTheme==ThemeMode.dark?
                       AppColors.yellowColor
                       :
                       AppColors.blackColor
                 ),
                 ),
                Icon(Icons.done, size: 35, color: pro.appTheme==ThemeMode.dark?
                AppColors.yellowColor:
                Colors.transparent,)
               ],
             ),
           )
        ],
      ),
    );
  }
}
