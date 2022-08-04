import 'package:flutter/material.dart';
import 'package:learn_flutter/303/feed_view.dart';
import 'package:learn_flutter/demos/color_demos_view.dart';
import 'package:learn_flutter/demos/my_collections_demo.dart';
import 'package:learn_flutter/demos/stack_demo_view.dart';

class TabAdvanceLearn extends StatefulWidget {
  const TabAdvanceLearn({Key? key}) : super(key: key);

  @override
  State<TabAdvanceLearn> createState() => _TabAdvanceLearnState();
}

class _TabAdvanceLearnState extends State<TabAdvanceLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchMargin = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Tabbar sayfalrı scafold yerine bunlar ile oluşturulur
      length: _MyTabViews.values.length, //Tabbar sayfa sayısı girilir
      child: Scaffold(
        extendBody: true, //Floating action bottom button style'ı için gerekli
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: _bottomAppBar(),
                body: _tabBarView(),
      ),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
        notchMargin: _notchMargin, //FloatingActionBottom Arka planı için geçerli
        shape: CircularNotchedRectangle(), //FloatingActionBottom Arka planı için geçerli
        child: TabBar(
            //Tabbar bottoma yada appbara verilebilir veilmesi basit
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            onTap: ((value) {}),
            controller: _tabController,
            tabs: _MyTabViews.values
                .map((e) => Tab(
                      text: "${e.name.toString()}",
                    ))
                .toList()));
  }

  TabBarView _tabBarView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics() //El ile kaydırmayı kapatır
        ,
        controller: _tabController //Eğer controller işlemleri var ise hem tabbarviewa hemde tabbara
        //controller verilmeli
        ,
        children: [
          //scafold bodysine ise belirlenen tabbar sayısı kadar sayfa verilir
          ColorDemoView(),
          FeedView(), MyCollectionsDemo(),
          StackDemo()
        ]);
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}

extension _MyTabViewExtensions on _MyTabViews {}
