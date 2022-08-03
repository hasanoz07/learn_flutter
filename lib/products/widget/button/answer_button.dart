import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({Key? key, this.onNumber}) : super(key: key);

  final bool Function(int number)? onNumber;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

// ? Senaryo
// todo Random bir sayı dönülecek sayı kontrol edilip cevap verilecek
// todo Bu cevaba göre butonun rengi güncelenecek
// todo eğer sayı doğru ise yeşil yanlış ise kırmızı dönülecek
class _AnswerButtonState extends State<AnswerButton> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _backgroundColor),
        onPressed: () {
          final result = Random().nextInt(10);
          final response = widget.onNumber?.call(result) ?? false;
          setState(() {
            _backgroundColor = response ? Colors.green : Colors.red;
          });
        },
        child: Text("data"));
  }
}
