import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:learn_flutter/202/services/comment_model.dart';
import 'package:learn_flutter/202/services/post_model.dart';


abstract class IPostService {
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<CommentModel>?> fetchReletadCommentWitgPostId(int postId);
}

class PostService implements IPostService {
  final Dio _networkManager;

  PostService() : _networkManager = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response = await _networkManager.post(_PostServicePath.posts.name, data: postModel);
      return response.statusCode == 201;
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response = await _networkManager.put(_PostServicePath.posts.name.toString() + '/$id', data: postModel);
      return response.statusCode == 200;
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _networkManager.delete(_PostServicePath.posts.name.toString() + '/$id');
      return response.statusCode == 200;
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _networkManager.get(_PostServicePath.posts.name);
      final _data = response.data;
      if (response.statusCode == 200) {
        if (_data is List) {
          return _data.map((e) => PostModel.fromJson(e)).toList();
        } else {
          return null;
        }
      }
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchReletadCommentWitgPostId(int postId) async {
    try {
      final response = await _networkManager
          .get(_PostServicePath.comments.name, queryParameters: {_PostQueryPath.postId.name: postId});
      final _data = response.data;
      if (response.statusCode == 200) {
        if (_data is List) {
          return _data.map((e) => CommentModel.fromJson(e)).toList();
        } else {
          return null;
        }
      }
    } on DioError catch (error) {
      _showDebug.showDioError(error, this);
    }
    return null;
  }
}

enum _PostServicePath { posts, comments }

enum _PostQueryPath { postId }

class _showDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}
