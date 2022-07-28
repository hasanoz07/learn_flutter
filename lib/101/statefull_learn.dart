import 'package:flutter/material.dart';
import 'package:learn_flutter/products/counter_hello_button.dart';
import 'package:learn_flutter/products/langues/langues_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
    // ignore: unused_field
    int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement == true) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguesItems.WelcomeTitle),),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(

        children: [
          Placeholder(),
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.red),
            ),
          ),
          CounterHelloButton(),
        ],
      ),
    );
  }
  Padding _deincrementButton() {
    print("burda");
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: FloatingActionButton(onPressed: () => _updateCounter(false), child: Icon(Icons.remove)),
    );
  }
  FloatingActionButton _incrementButton() {
    return FloatingActionButton(onPressed: () => _updateCounter(true), child: Icon(Icons.add));
  }
}
