import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/MyTheme.dart';
import 'package:islami_application/providers/MyProvider.dart';
import 'package:islami_application/providers/surahDetailsProvider.dart';
import 'package:provider/provider.dart';
import 'HadethDetails.dart';
import 'Home/HomeScreen.dart';
import 'SplashScreen.dart';
import 'SurahDetails.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp( MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MyProvider(),),
    
        ],
    child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        saveLocale: true,
        startLocale: Locale('en'),
        // fallbackLocale: Locale(provider.langCode),
        child: MyApp(),
    )
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
        title: 'Islami',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale:context.locale,
        debugShowCheckedModeBanner: false,
        themeMode: provider.appTheme,
        theme: MyThemeData.LightTheme,
        darkTheme: MyThemeData.DarkTheme,
        initialRoute: Splashscreen.routeName,
        routes: {
          Splashscreen.routeName: (context) => Splashscreen(),
          Homescreen.routeName: (context) => Homescreen(),
          Surahdetails.routeName: (context) => Surahdetails(),
          HadethScreen.routeName: (context) => HadethScreen()
        });
  }
}
