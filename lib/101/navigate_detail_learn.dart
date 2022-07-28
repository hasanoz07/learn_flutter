import 'package:flutter/material.dart';

class NavigateLearnDart extends StatefulWidget {
  const NavigateLearnDart({Key? key,  this.isOkey=false}) : super(key: key);
  final bool isOkey;

  @override
  State<NavigateLearnDart> createState() => _NavigateLearnDartState();
}
@override

class _NavigateLearnDartState extends State<NavigateLearnDart> {
  @override
void didChangeDependencies() {
  super.didChangeDependencies();
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: Icon(Icons.check,color: widget.isOkey?Colors.red:Colors.green,),
          label: widget.isOkey? const Text("Red"):const Text("Onayla"),
        ),
      ),
    );
  }
}
