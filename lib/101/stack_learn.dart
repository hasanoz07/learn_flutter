import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
              ),
              height: 100,
            ),
          ),
          Positioned(
            top: 80,
            left: 50,
            right: 50,
            bottom: 20,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
