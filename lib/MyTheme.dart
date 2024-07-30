import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/colors.dart';

class MyThemeData {
  static ThemeData LightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            height: 46.89,
            color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        color: AppColors.primaryColor,
      ),
      textTheme: TextTheme(
        bodyMedium:
            GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ));

  static ThemeData DarkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        height: 46.89,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellowColor,
      unselectedItemColor: Colors.white,
      backgroundColor: AppColors.Darkprimary,
      type: BottomNavigationBarType.fixed,
    ),
    dividerTheme: DividerThemeData(
      thickness: 2,
      color: AppColors.yellowColor,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.inter(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
    ),
  );
}
