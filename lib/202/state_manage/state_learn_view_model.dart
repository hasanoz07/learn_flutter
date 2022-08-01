import 'package:flutter/material.dart';
import 'package:learn_flutter/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  bool isVisible = true;
  bool isOpacity = true;

  void changeVisibleStatus() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacityStatus() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }

  @override
  void initState() {
    super.initState();
  }
}
