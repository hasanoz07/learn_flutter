import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;
  @override
  // ignore: must_call_super
  void didChangeDependencies() {
    //inits ile build metodu arasında çalışır
    
    _computeValues();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    //Sayfada değişiklik olduğunda çalışır

    
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      print("b");
    }
  }

  @override
  void initState() {
    //Build metodu tetiklenmenden önce çalışır
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isEven;
    print("a");
  }

  @override
  void dispose() {
    //Sayfa öldüğü anda sayafadan çıkıldığı anada çalışır
    
    super.dispose();
    print("Dispose");
  }

  void _computeValues() {
    if (_isOdd) {
      _message += "Çift";
    } else {
      _message += "Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd
          ? Center(
              child: TextButton(
                  onPressed: () {
                    _message = "Ozsoft";
                  },
                  child: Text(_message)))
          : Center(child: ElevatedButton(onPressed: () {}, child: Text(_message))),
    );
  }
}
