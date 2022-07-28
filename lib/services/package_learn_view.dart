import 'package:flutter/material.dart';
import 'package:learn_flutter/202/packages/launch_manager.dart';
import 'package:learn_flutter/202/packages/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        launchURL("https://www.youtube.com/watch?v=I6dPIgu5Bjs&t=15s");
        
      },backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("data",style: Theme.of(context).textTheme.subtitle1,),
          LoadingBar(size: 150, color: Colors.red),
        ],
      ),
    );
  }
}
