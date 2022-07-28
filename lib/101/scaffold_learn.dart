import 'package:flutter/material.dart';
import 'package:learn_flutter/101/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Learn"),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(
              //Aşağıdan açılan bir tane sheet açar
              context: context,
              builder: (context) => Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ));
        }),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: ProjectContainerDecoration(),
        height: 200,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.fire_extinguisher), label: ""),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("data")],
      ),
    );
  }
}
