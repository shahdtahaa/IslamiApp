import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors.dart';
import '../providers/MyProvider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Locale currentLocal = context.locale;


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
          SizedBox(height: 18),
          InkWell(
            onTap: () {
             context.setLocale(Locale('en'));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: currentLocal==Locale('en')?
                      AppColors.primaryColor
                          :
                      AppColors.blackColor),
                ),
                currentLocal==Locale('en')?
                Icon(
                  Icons.done,
                  size: 35,
                  color: pro.appTheme==ThemeMode.light?
                  AppColors.primaryColor
                  :
                  AppColors.yellowColor,
                )
                    :
                    SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
context.setLocale(Locale('ar'));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "arabic".tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:currentLocal!=Locale('en')?
                  AppColors.primaryColor
                      :
                  AppColors.blackColor),
                ),
                currentLocal==Locale('ar')?
                Icon(
                  Icons.done,
                  size: 35,
                  color: pro.appTheme==ThemeMode.light?
                  AppColors.primaryColor
                      :
                  AppColors.yellowColor,
                )
                    :
                SizedBox()

              ],
            ),
          )
        ],
      ),
    );
  }
}
