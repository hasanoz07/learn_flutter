import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/202/services/post_model.dart';


class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
   String _isSucces="";
  late final Dio _networkManager;
  bool _isLoading = false;
  final String _baseUrl = "https://jsonplaceholder.typicode.com/";
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  @override
  void initState() {
  
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isSucces),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          _isLoading ? Center(child: const CircularProgressIndicator()) : const SizedBox.shrink(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Title"),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _bodyController,
            decoration: InputDecoration(labelText: "Body"),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "UserId"),
          ),
          TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _userIdController.text.isNotEmpty) {
                        final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            userId: int.tryParse(_titleController.text));

                       // _addItemToService(model);
                      }
                    },
              child: Text("send"))
        ],
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
        title: Text(_postModelItems?[index].title ?? ""),
        subtitle: Text(_postModelItems?[index].body ?? ""),
      ),
    );
  }
}