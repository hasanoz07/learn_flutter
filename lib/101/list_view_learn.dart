import 'package:flutter/material.dart';


class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
              child: Text(
            "Merhaba",
            style: Theme.of(context).textTheme.headline1,
          )),
          Container(
            color: Colors.red,
            height: 400,
          ),
          Divider(),
          Placeholder(),
          Placeholder(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.green,
                    width: 250,
                  ),
                  Container(
                    color: Colors.white,
                    width: 250,
                  )
                ],
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          ListDemo(),
        ],
      ),
    );
  }
}

class ListDemo extends StatefulWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
void initState() {
  super.initState();
  print("Çalıştı");
}
@override
  void dispose() {
    
    super.dispose();
    print("Bitti");
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}