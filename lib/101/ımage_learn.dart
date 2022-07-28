
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 350,
            child: PngImage(
              name: ImageItems.appleBooxWithOutPath,
            ),
          ),
          Expanded(
              child: Image.network(
            "https://w7.pngwing.com/pngs/786/4/png-transparent-car-2017-volkswagen-golf-volkswagen-golf-mk7-volkswagen-gti-car-compact-car-car-golf.png",
            errorBuilder: ((context, error, stackTrace) => PngImage(name: ImageItems.appleBooxWithOutPath)),
          )),
        ],
      ),
    );
  }
}

class ImageItems {
  static final String appleWithBoox = "assets/ic_apple_and_book.png";
  static final String appleBoox = "assets/images/ic_apple_and_book.png";
  static final String appleBooxWithOutPath = "ic_apple_and_book";
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
