import 'dart:developer';

import 'package:flutter/material.dart';

class AlerLearn extends StatefulWidget {
  const AlerLearn({Key? key}) : super(key: key);

  @override
  State<AlerLearn> createState() => _AlerLearnState();
}

class _AlerLearnState extends State<AlerLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final _response = showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) {
              return _ImageZoomDialog();
            },
          );
          inspect(_response);
        },
        child: Icon(Icons.safety_check),
      ),
      appBar: AppBar(),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      title: Text(Keys.versionUpdate),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text("Güncelle")),
        TextButton(onPressed: () {}, child: Text("Geri Dön"))
      ],
    );
  }
}

class Keys {
  static const versionUpdate = "Version Update";
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: Text(Keys.versionUpdate),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text("Güncelle")),
            TextButton(onPressed: () {}, child: Text("Geri Dön"))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      key: key,
      child: InteractiveViewer(
        child: Image.network(
          "https://picsum.photos/200/300",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.6,
          
        ),
      ),
    );
  }
}
