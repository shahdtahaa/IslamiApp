import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SurahDetialsProvider extends ChangeNotifier
{
List<String> versus=[];
  loadSurahFiles(int index) async {
    String surah = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> SurahLine = surah.split("\n");

    versus = SurahLine;
    print(SurahLine);
notifyListeners();
  }

}