import 'package:flutter/material.dart';
import 'package:learn_flutter/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

Color? _backgroundColor;

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                _backgroundColor = Colors.green;
                
                  
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: ColorDemoView(
            initialColor: _backgroundColor
          ))
        ],
      ),
    );
  }
}
