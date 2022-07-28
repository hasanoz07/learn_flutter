import 'dart:ui';

import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePath.ic_software_factory.toWidget(),
    );
  }
}

enum ImagePath { ic_apple_and_book, ic_software_factory, ic_software }

extension ImagePathExtension on ImagePath {
  String path() {
    return "assets/images/$name.png";
  }

  Widget toWidget({double height = 100}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
