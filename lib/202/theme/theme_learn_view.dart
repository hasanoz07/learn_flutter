import 'package:flutter/material.dart';
import 'package:learn_flutter/demos/password_textfield.dart';


class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CheckboxListTile(
            value: true,
            onChanged: (val) {},
            title: Text("select"),
          ),
          PasswordTextField()
        ],
      ),
    );
  }
}
