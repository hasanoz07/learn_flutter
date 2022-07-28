import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text("Ali")),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text("Ali")),
            ),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: Theme.of(context).colorScheme.error,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Center(child: Text("Ali")),
            ),
            shape: CircleBorder(),
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            color: Theme.of(context).colorScheme.error,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
            shape: RoundedRectangleBorder(),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static final cardMargin = const EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  final Widget child;

  // ignore: unused_element
  _CustomCard({super.key, required this.child});
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      child: child,
    );
  }
}

//Borders
//StadiumBorder(),
