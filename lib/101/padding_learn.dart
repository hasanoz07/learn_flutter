import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaddingLearn extends StatelessWidget {
  PaddingLearn({Key? key}) : super(key: key);
  ProjectPadding projectPadding = ProjectPadding();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: projectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: projectPadding.pagePaddingRightOnly,
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: projectPadding.pagePaddingRightOnly,
              child: Text("ali"),
            ),
            Padding(
              padding: const EdgeInsets.all(10) + projectPadding.pagePaddingVertical,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
  final pagePaddingRightOnly = const EdgeInsets.only(right: 20);
}
