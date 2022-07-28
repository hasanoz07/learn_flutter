import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  @override
  bool _isVisible = true;
  bool _isOpacity = true;
  late AnimationController _animationController;
  double contwidth = 0;
  double contheight = 0;
  void changeVisibleStatus() {
    setState(() {
      _isVisible = !_isVisible;
      contwidth = 50;
      contheight = 50;
    });
  }

  void changeOpacityStatus() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  //Text("data",style: Theme.of(context).textTheme.headline1,),);
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisibleStatus();
            _animationController.animateTo(_isVisible ? 1 : 0);
          },
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: Text(
                  "data",
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  changeOpacityStatus();
                },
                icon: Icon(Icons.precision_manufacturing_outlined),
              ),
            ),
            AnimatedDefaultTextStyle(
              child: const Text("data"),
              style: (_isVisible
                      ? context.textTheme().subtitle1
                      : context.textTheme().headline2?.copyWith(color: Colors.red)) ??
                  TextStyle(),
              duration: _DurationItems.durationLow,
            ),
            AnimatedIcon(
              icon: AnimatedIcons.event_add,
              progress: _animationController,
            ),
            AnimatedContainer(
                duration: _DurationItems.durationLow,
                height: _isVisible ? (MediaQuery.of(context).size.height) * 0.2 : 0,
                width: (MediaQuery.of(context).size.width) * 0.2,
                color: Colors.red,
                curve: Curves.bounceOut,
                padding: EdgeInsets.all(200),
                child: Placeholder()),
            Expanded(
                child: Stack(
              children: [AnimatedPositioned(top:0,child: Text("Data"),curve: Curves.elasticOut, duration: _DurationItems.durationLow)],
            )),
            Expanded(
              child: AnimatedList(
                itemBuilder: ((context, index, animation) {
                  return Text("data");
                }),
              ),
            )
          ],
        ));
  }
}

class _placeHolderWidget extends StatelessWidget {
  const _placeHolderWidget({
    Key? key,
    required bool isVisible,
  })  : _isVisible = isVisible,
        super(key: key);

  final bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        duration: _DurationItems.durationLow,
        crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond);
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const Duration durationVeryLow = Duration(seconds: 2);
  static const Duration durationLow = Duration(seconds: 1);
}
