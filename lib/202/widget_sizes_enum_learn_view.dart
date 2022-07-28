import 'package:flutter/material.dart';

class WidgetSizesEnumLearnView extends StatefulWidget {
  const WidgetSizesEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizesEnumLearnView> createState() => _WidgetSizesEnumLearnViewState();
}

class _WidgetSizesEnumLearnViewState extends State<WidgetSizesEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          color: Colors.green,
          height: WidgetSizes.circleProfileRadius.value(),
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileRadius }

extension WidgetSizesExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;

      case WidgetSizes.circleProfileRadius:
        return 25;
    }
  }
}
