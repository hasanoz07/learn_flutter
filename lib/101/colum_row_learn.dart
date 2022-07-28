import 'package:flutter/material.dart';

class RowColumnLearn extends StatelessWidget {
  const RowColumnLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: ProjectContainerSizes.cardHeight,
            color: Colors.amber,
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  Expanded(flex: 2, child: Container(color: Colors.red)),
                  Expanded(flex: 2, child: Container(color: Colors.yellow)),
                  Expanded(flex: 2, child: Container(color: Colors.blue)),
                  Expanded(flex: 2, child: Container(color: Colors.green))
                ],
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.red)),
                  Expanded(flex: 2, child: Container(color: Colors.yellow)),
                  Expanded(flex: 2, child: Container(color: Colors.blue)),
                  Expanded(flex: 2, child: Container(color: Colors.green))
                ],
              )),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("a1"), Text("a2"), Text("a3")],
              )),
          Expanded(flex: 2, child: FlutterLogo())
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
