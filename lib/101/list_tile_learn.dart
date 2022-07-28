

import 'package:flutter/material.dart';
import 'package:learn_flutter/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                dense: true, //Componentin paddinglerini sildirerek olabildğince sıkıştırmamızı sağlar
                onTap: () {},
                title: RandomImage(),
                subtitle: Text("How do you do"),
                leading: Icon(Icons.money_outlined),
                trailing: SizedBox(width: 20, child: Icon(Icons.back_hand)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
