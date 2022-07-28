import 'package:flutter/material.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItem = [];
  void addItem(int index,bool isAdd) {
    setState(() {
     isAdd? selectedItem.add(index):selectedItem.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await navigateToNormalWidget<bool>(context, NavigateLearnDart());
          if (response == true) {}
        },
        child: Icon(
          Icons.navigate_next,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToNormalWidget<bool>(
                  context,
                  NavigateLearnDart(
                    isOkey: selectedItem.contains(index),
                  ));
              if (response is bool) {
                addItem(index,response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(color: selectedItem.contains(index) ? Colors.green : Colors.red),
            ),
          );
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  Future<T?> navigateToNormalWidget<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(builder: (context) => widget, settings: RouteSettings()),
    );
  }
}
