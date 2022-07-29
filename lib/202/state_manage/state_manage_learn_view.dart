import 'package:flutter/material.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({Key? key}) : super(key: key);

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends State<StateManageLearnView> {
  bool _isVisible = true;
  bool _isOpacity = true;

  void changeVisibleStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacityStatus() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
