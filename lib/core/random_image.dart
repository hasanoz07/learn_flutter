import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  final double imageHeight;
  const RandomImage({Key? key,this.imageHeight=100,this.ImageUrl="https://i.picsum.photos/id/556/200/300.jpg?hmac=TLwE28gIMuw2BUTndMuC3hoTlK6FtrE6Mx1UnR2dzu8"}) : super(key: key);
final ImageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(ImageUrl,height: imageHeight,fit: BoxFit.cover,);
  }
}