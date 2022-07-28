import 'package:flutter/material.dart';

class ColorDemoView extends StatefulWidget {
  final Color? initialColor;
  const ColorDemoView({Key? key, this.initialColor}) : super(key: key);

  @override
  State<ColorDemoView> createState() => _ColorDemoViewState();
}

class _ColorDemoViewState extends State<ColorDemoView> {
  @override
  // ignore: override_on_non_overriding_member
  Color _backgroundColor = Colors.transparent;
  
  void changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
@override
  // ignore: must_call_super
  void initState() {
 
    _backgroundColor=widget.initialColor??Colors.transparent;
  }
  @override
  // ignore: must_call_super
  void didUpdateWidget(covariant ColorDemoView oldWidget) {
   
    
    if (widget.initialColor!=_backgroundColor&&widget.initialColor!=null) {
      changeColor(widget.initialColor!);
    }
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: _colorMethod, items: [
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.red,
            ),
            label: "Red"),
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.yellow,
            ),
            label: "Yellow"),
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.blue,
            ),
            label: "Blue"),
      ]),
    );
  }

  void _colorMethod(int value) {
    if (value == _myColors.red.index) {
      changeColor(Colors.red);
    } else if (value == _myColors.yellow.index) {
      changeColor(Colors.yellow);
    } else if (value == _myColors.blue.index) {
      changeColor(Colors.blue);
    }
  }
}

enum _myColors { red, yellow, blue }

class _colorContainer extends StatelessWidget {
  final Color color;
  _colorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: color,
    );
  }
}
