import 'package:flutter/material.dart';
import 'package:learn_flutter/101/%C4%B1con_learn.dart';
import 'package:learn_flutter/101/button_learn.dart';

import 'package:learn_flutter/demos/note_demos_app.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final PageController _pageController = PageController(viewportFraction: 1);
  int _currentPageIndex=1;
  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex=index+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString(),style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.red),),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.bounceIn);
            },
            child: Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.bounceIn);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: (int index){
_updatePageIndex(index);
        },
        children: [
          NoteDemoApp(),
          IconLearnView(),
          ButtonLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const Duration _durationLow = Duration(seconds: 1);
}
