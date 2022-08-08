import 'package:flutter/material.dart';
import 'package:learn_flutter/202/services/post_model.dart';
import 'package:learn_flutter/202/services/post_service.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: AppBar(
        
      ),
      body: FutureBuilder<List<PostModel>?>(
        future: _postService.fetchPostItemsAdvance(),
        builder: (BuildContext context, AsyncSnapshot<List<PostModel>?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Placeholder();

            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data?[index].body ?? ""),
                    );
                  },
                );
              } else {
                return Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
