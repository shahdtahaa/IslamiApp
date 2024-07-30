import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/BottomSheets/LanguageSheet.dart';
import 'package:islami_application/BottomSheets/ThemeSheet.dart';
import 'package:islami_application/colors.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(39.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Text("theme".tr(), style: Theme.of(context).textTheme.bodyMedium,),
           SizedBox(height: 24),
           GestureDetector(
             onTap: (){
               showModalBottomSheet(context: context, builder: (context) {
                 return ThemeBottomSheet();
               },);
             },
             child: Container(
               padding: const EdgeInsets.all(12),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(24),
                 border: Border.all(color:AppColors.primaryColor)
               ),
               child: Text("light".tr()),
             ),
           ),

SizedBox(height: 12),
          Text("language".tr(), style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(height: 24),
          GestureDetector(
            onTap: (){

              showModalBottomSheet(context: context,
                isScrollControlled: true,
               //isDismissible: false ,
                builder: (context) {
                return LanguageBottomSheet();

              },);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color:AppColors.primaryColor)
              ),
              child: Text("arabic".tr()),
            ),
          )
        ],
      ),
    );
  }
}
