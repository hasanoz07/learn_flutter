import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({Key? key}) : super(key: key);
  final ColorsItems colorsItems = ColorsItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
        child: Text("data"),
      ),
    );
  }
}

class ColorsItems {
  final Color porchase = Color(0xffEDBF61);
  final Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
