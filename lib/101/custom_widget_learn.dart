import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with ColorsUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFootButton(
                    title: title,
                  ),
                ),
              ),
            ),
            CustomFootButton(title: "title"),
          ],
        ),
      ),
    );
  }
}

class ColorsUtility {
  final Color red = Colors.red;
  final Color white = Colors.white;
}

class PaddingItems {
  final EdgeInsets allPadding = EdgeInsets.all(8);
  final EdgeInsets all2xPadding = EdgeInsets.all(16);
}

class CustomFootButton extends StatelessWidget with ColorsUtility, PaddingItems {
  CustomFootButton({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: red, shape: StadiumBorder()),
      onPressed: () {},
      child: Padding(
        padding: allPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
