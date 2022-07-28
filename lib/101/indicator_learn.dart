import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCicrularRedIndicator()],
      ),
      body: LinearProgressIndicator(),
    );
  }
}

class CenterCicrularIndicator extends StatelessWidget {
  const CenterCicrularIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class CenterCicrularRedIndicator extends StatelessWidget {
  const CenterCicrularRedIndicator({Key? key}) : super(key: key);
  final Color red = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: red,
      value: 0.8, //Hareket etmesini değişken ile verebiliyoruz
      strokeWidth: 10, //Progges indicator kalınlığını belirliyor
    ));
  }
}
