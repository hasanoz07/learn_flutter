import 'package:flutter/material.dart';

import 'package:learn_flutter/202/oop_learn_view.dart';
import 'package:learn_flutter/202/packages/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      // ThemeData.dark().copyWith(
      //     tabBarTheme: TabBarTheme(
      //         labelColor: Colors.white, unselectedLabelColor: Colors.red, indicatorSize: TabBarIndicatorSize.label),
      //     inputDecorationTheme: InputDecorationTheme(
      //         filled: true,
              
      //         iconColor: Colors.red,
      //         border: OutlineInputBorder(),
      //         labelStyle: TextStyle(color: Colors.lime)),
      //     progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
      //     listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      //     errorColor: ColorsItems().sulu,
      //     appBarTheme: AppBarTheme(
      //       //Bütün appbarlar için otomatik olan işlemler burada veririlir
      //       centerTitle: true,

      //       backgroundColor: Colors.transparent,
      //       systemOverlayStyle: SystemUiOverlayStyle.dark, //status bar durumunu belirler
      //       elevation: 0, //sayfanın kendisindenmiş gibi yapmak için appbarı
      //     )),
      home: OppLearnView(),
    );
  }
}
