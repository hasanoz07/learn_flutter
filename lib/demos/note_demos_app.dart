// ignore_for_file: unused_element, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemoApp extends StatelessWidget {
  NoteDemoApp({Key? key}) : super(key: key);
  PaddingItems paddingItems = PaddingItems();
  final String titleText = "Create your first note";
  final String subTitleText = "Add a note";
  final String elevatedButtonText = "Create a Note";
  final String textButtonText = "İmport Note";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: paddingItems.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PngImage(
              name: ImageItems.appleBooxWithOutPath,
            ),
            _titleWidget(context, titleText),
            Padding(
                padding: paddingItems.verticalPadding,
                child: _SubtitleTextWidget(
                  text: subTitleText,
                )),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    elevatedButtonText,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text(textButtonText)),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }

  Text _titleWidget(BuildContext context, String title) => Text(
        title,
        style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
      );
}

class _SubtitleTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  const _SubtitleTextWidget({Key? key, required this.text, this.textAlign = TextAlign.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add a note" * 8,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
      textAlign: textAlign,
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => "assets/images/$name.png";
}

class ImageItems {
  static final String appleWithBoox = "assets/ic_apple_and_book.png";
  static final String appleBoox = "assets/images/ic_apple_and_book.png";
  static final String appleBooxWithOutPath = "ic_apple_and_book";
}
