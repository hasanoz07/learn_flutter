import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedPreferences prefs;
  final TextEditingController _controller = TextEditingController();

  Future<void> getDefaultValues() async {
    prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt("counter");
    _onChangedValue(counter.toString());
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
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).errorColor,
                ))
              : SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),
      ),
      body: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          _onChangedValue(value);
        },
      ),
    );
  }

  _saveValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: () async {
        changeLoading();

        
        changeLoading();
      },
    );
  }

  _removeValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.remove_circle_outline),
      onPressed: () async {
        changeLoading();

        await prefs.remove('counter');
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

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
