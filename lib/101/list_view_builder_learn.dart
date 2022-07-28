import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding:EdgeInsets.zero,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.white,
            height: 20,
          );
        },
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Placeholder()),
              ],
            ),
          );
        },
      ),
    );
  }
}
