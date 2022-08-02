import 'package:flutter/material.dart';
import 'package:learn_flutter/202/cache/shared_manager.dart';
import 'package:learn_flutter/202/cache/user_model.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);
  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  final TextEditingController _controller = TextEditingController();
  late final SharedManager _manager;
  void getDefaultValues() {
    _onChangedValue(_manager.getString(SharedKeys.counter) ?? "");
  }

  void _onChangedValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();

    _initilaze();
  }

  Future<void> _initilaze() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _removeValueButton(),
          _saveValueButton(),
        ],
      ),
      appBar: AppBar(
        actions: [_loading(context)],
        title: Text(_currentValue.toString()),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _onChangedValue(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  SingleChildRenderObjectWidget _loading(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(
            color: Theme.of(context).errorColor,
          ))
        : SizedBox.shrink();
  }

  _saveValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: () async {
        changeLoading();
        await _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
      },
    );
  }

  _removeValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.remove_circle_outline),
      onPressed: () async {
        changeLoading();
        await _manager.removeItem(SharedKeys.counter);
        changeLoading();
        setState(() {
          _currentValue = 0;
        });
        _controller.clear();
      },
    );
  }
}

//

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User("oz", "20", "oz.dev"),
      User("oz2", "21", "oz2.dev"),
      User("oz3", "23", "oz3.dev"),
      User("oz4", "25", "oz4.dev"),
    ];
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
