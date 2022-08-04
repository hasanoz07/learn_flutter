import 'package:flutter/material.dart';
import 'package:learn_flutter/202/services/comment_model.dart';
import 'package:learn_flutter/202/services/post_service.dart';

class CommentsLearn extends StatefulWidget {
  const CommentsLearn({Key? key, this.postId}) : super(key: key);
  final int? postId;
  @override
  State<CommentsLearn> createState() => _CommentsLearnState();
}

class _CommentsLearnState extends State<CommentsLearn> {
  late final IPostService postService;
  List<CommentModel>? _commentModelItems;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchPostItemsWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItemsWithId(int postId) async {
    _commentModelItems =await postService.fetchReletadCommentWitgPostId(postId);
     
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator() : SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
        itemCount: _commentModelItems?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Card(
              child: Text(
                _commentModelItems?[index].email ?? "",
              ),
            ),
          );
        },
      ),
    );
  }
}