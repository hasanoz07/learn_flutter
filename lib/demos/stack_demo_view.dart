import 'package:flutter/material.dart';
import 'package:learn_flutter/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
  final double _cardHeight = 50;
  final double _cardWidth = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: RandomImage(),
                    bottom: _cardHeight / 2,
                  ),
                  Positioned(
                      height: _cardHeight,
                      width: _cardWidth,
                      bottom: 0,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(),
                      ))
                ],
              )),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
