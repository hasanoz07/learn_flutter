import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureContextLearnView extends StatefulWidget {
  const SecureContextLearnView({Key? key}) : super(key: key);

  @override
  State<SecureContextLearnView> createState() => _SecureContextLearnViewState();
}

enum _SecureKeys{
token
}
class _SecureContextLearnViewState extends State<SecureContextLearnView> {
  final _storage = FlutterSecureStorage();
@override
void initState() {
  super.initState();
  getSecureItems();
}
Future<void> getSecureItems() async {
  _title=await _storage.read(key: _SecureKeys.token.name)??"";
  setState(() {
    _title;
  });
}
String _title="";
  void saveItems(String data){
    setState(() {
      _title=data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _storage.write(key: _SecureKeys.token.name, value: _title);
        },
        label: Text("Save"),
      ),
      appBar: AppBar(title: Text(_title),centerTitle: true,),
      body: TextField(onChanged: (value) {
        saveItems(value);
      },),
    );
  }
}
