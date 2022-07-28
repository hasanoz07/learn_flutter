import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 500),
          ),
          SizedBox.shrink(), //ekranda boş bir alan verir
          SizedBox.square(
            dimension: 60,
            child: Text("b" * 50),
          ), //kare bir alan çizer
          Container(
            height: 100,
            constraints: BoxConstraints(maxWidth: 150, minWidth: 50), //Min ve max yükselik genişlikleri verebiliriz
            padding: EdgeInsets.all(10), //İçeriden boşluk
            child: Text("aa" * 100),
            margin: EdgeInsets.all(10), //Dışarıdan boşluk
            decoration: ProjectUtility.containerDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    //shape: BoxShape.circle, //containeri yuvarlak yapar
    border: Border.all(
      //Containera kenar verebiliyoruz.
      width: 2, color: Colors.white,
    ),
    boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          //shape: BoxShape.circle, //containeri yuvarlak yapar
          border: Border.all(
            //Containera kenar verebiliyoruz.
            width: 2, color: Colors.white,
          ),
          boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
        );
}
