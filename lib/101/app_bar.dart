import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),

        //Appbar sayfaya dahilmiş görüntüsü verilmektedir.
        actionsIconTheme: IconThemeData(color: Colors.red, size: 30), //actions bolümünün ayarını yapar
        leading: Icon(Icons.arrow_back), //Geri butonu gibi şeylerin olduğu kısım
        toolbarTextStyle: TextStyle(color: Colors.yellow),
        automaticallyImplyLeading: false, //Otomatik olarak sayfada back buton gelip gelmemesini ayarlar
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          Center(child: const CircularProgressIndicator())
        ],
      ),
      body: Column(
        children: [Text("")],
      ),
    );
  }
}
