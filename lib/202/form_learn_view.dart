import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();
  bool? checkBoxValue=false;
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        onChanged: () {
          print("a");
        },
        child: Column(
          children: [
            TextFormFieldIsNotEmpty(),
            TextFormFieldIsNotEmpty(),
            DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                  child: Text("a"),
                  value: "a",
                ),
                DropdownMenuItem(
                  child: Text("b"),
                  value: "b",
                ),
                DropdownMenuItem(
                  child: Text("c"),
                  value: "c",
                ),
                ],
                onChanged: (value) {}),
                Checkbox(value: checkBoxValue, onChanged: (value){
                  setState(() {
                    checkBoxValue=!checkBoxValue!;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) ;
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}

class TextFormFieldIsNotEmpty extends StatelessWidget {
  const TextFormFieldIsNotEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        FormFieldValidator.isNotEmpty(value);
      }),
    );
  }
}

class FormFieldValidator {
  static String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : "Bu alan boş geçilemez";
  }
}
