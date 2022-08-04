import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/202/services/comment_learn_view.dart';
import 'package:learn_flutter/202/services/post_model.dart';
import 'package:learn_flutter/202/services/post_service.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _postModelItems;
  bool _isLoading = true;
  //Test Edilebilir Kod Başlıyor
  late final IPostService _postService;
  @override
  void initState() {
    super.initState();
    _postService = PostService();
    fetchPostItemsAdvance();
  }

  // ignore: unused_element
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    _postModelItems = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [_isLoading ? Center(child: const CircularProgressIndicator()) : const SizedBox.shrink()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _postModelItems == null
            ? Placeholder()
            : ListView.builder(
                itemCount: _postModelItems?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return _PostCard(
                    postModelItems: _postModelItems,
                    index: index,
                  );
                },
              ),
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required List<PostModel>? postModelItems,
    required this.index,
  })  : _postModelItems = postModelItems,
        super(key: key);

  final List<PostModel>? _postModelItems;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => CommentsLearn(
                    postId: index,
                  ))));
        },
        title: Text(_postModelItems?[index].title ?? ""),
        subtitle: Text(_postModelItems?[index].body ?? ""),
      ),
    );
  }
}