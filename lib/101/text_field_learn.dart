import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/products/langues/langues_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            maxLength: 20,
            buildCounter: (context, {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter()._formatter],
            focusNode: focusNodeTextFieldOne,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: LanguesItems.mailTitle,
              fillColor: Colors.red,
              filled: true,
            ),
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) => AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        height: 10,
        width: 10.0 * (currentLength ?? 0),
        color: Colors.red[100 * (currentLength ?? 0)],
      );
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    } else {
      return newValue;
    }
  });
}
