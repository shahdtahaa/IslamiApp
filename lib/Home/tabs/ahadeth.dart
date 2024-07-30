import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/hadethModel.dart';
import '../../HadethDetails.dart';
import '../../colors.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allahadeth = [];

  void initState() {
    super.initState();
    loadaHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Image.asset(
        'assets/images/ahadeth_bg.png',
        width: 312,
        height: 219,
      )),
      Divider(
      ),
      Center(
        child: Expanded(
          child: Text("ahadeth".tr(),
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ),
      ),
      Divider(
      ),
      Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HadethScreen.routeName,
                        arguments: allahadeth[index]);
                  },
                  child: Text(
                    allahadeth[index].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                );
              },
              itemCount: allahadeth.length))
    ]);
  }

  loadaHadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];

        List<String> hadethLines = hadeth.trim().split("\n");

        String title = hadethLines[0];

        hadethLines.removeAt(0);

        List<String> content = hadethLines;

        HadethModel hadethModel = HadethModel(title, content);

        allahadeth.add(hadethModel);
      }
      setState(() {});
    });
  }
}
