import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/SurahModel.dart';

class Surahdetails extends StatefulWidget {
  static const String routeName='surah details';

  const Surahdetails({super.key});

  @override
  State<Surahdetails> createState() => _SurahdetailsState();
}

class _SurahdetailsState extends State<Surahdetails> {
  List<String>versus=[];
  @override
  Widget build(BuildContext context) {
    var Model=ModalRoute.of(context)?.settings.arguments as surahModel;
    if(versus.isEmpty){
      loadSurahFiles(Model.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.png'),)

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title:
    Text(Model.name,style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              height: 46.89
    ),
    ),
        ),
    body: ListView.builder(itemBuilder:(context, index) {
      return Text(versus[index],style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 25),textAlign: TextAlign.right,);
    },
    itemCount: versus.length,),
      )
    );
  }

  loadSurahFiles( int index) async{
    String surah = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>SurahLine=surah.split("\n");
    print(SurahLine);
    versus=SurahLine;
    setState(() {

    });
  }
}
