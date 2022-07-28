import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  final double size;
  final Color color;
  const LoadingBar({Key? key,this.size=50,  this.color=Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SpinKitFadingFour(
      color: color,
      size: size,
    );
  }
}
