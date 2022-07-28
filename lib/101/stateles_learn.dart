import 'package:flutter/material.dart';

class StatelesLearn extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  final String title2 = "Dolu data";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            title: title2,
          ),
          TitleTextWidget(
            title: title2,
          ),
          _emptyBox(),
          TitleTextWidget(
            title: title2,
          ),
          TitleTextWidget(
            title: title2,
          ),
          _emptyBox(),
          TitleTextWidget(
            title: title2,
          ),
          TitleTextWidget(
            title: title2,
          ),
          _emptyBox(),
          TitleTextWidget(),
          _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(
        height: 10,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  final String? title;
  final String s = "Boş Data";
  const TitleTextWidget({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? s,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
