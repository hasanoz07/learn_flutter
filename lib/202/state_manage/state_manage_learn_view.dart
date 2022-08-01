import 'package:flutter/material.dart';
import 'package:learn_flutter/202/state_manage/state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({Key? key}) : super(key: key);

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },),
      appBar: AppBar(
          backgroundColor: isOpacity ? Colors.red : Colors.green, shadowColor: isVisible ? Colors.amber : Colors.grey),
    );
  }
}
