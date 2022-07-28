import 'package:flutter/material.dart';
import 'package:learn_flutter/202/oop_learn.dart';

class OppLearnView extends StatefulWidget {
  const OppLearnView({Key? key}) : super(key: key);

  @override
  State<OppLearnView> createState() => _OppLearnViewState();
}

class _OppLearnViewState extends State<OppLearnView> {
  @override
  FileDownload? _fileDownload;
  @override
  void initState() {
    super.initState();
    _fileDownload = FileDownload();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Center(child: CircularProgressIndicator(color: Colors.red,),)],),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _fileDownload?.downloadItem(null);
      }),
    );
  }
}
