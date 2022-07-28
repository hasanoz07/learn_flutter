class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.body, this.id, this.title, this.userId);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

class PostModel5 {
  late final int _userId;
  late final int _id;
  late String _title;
  late String _body;

  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get Body => _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body}) //:_userId=userId,_id=id,_title=title,_body=body

  {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel6 {
  // ignore: unused_field
  late final int _userId;
  // ignore: unused_field
  late final int _id;
  // ignore: unused_field
  late String _title;
  // ignore: unused_field
  late String _body;

  PostModel6(
      {int userId = 0,
      int id = 0,
      String title = "",
      String body = ""}) //:_userId=userId,_id=id,_title=title,_body=body

  {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

//bu class serviceden besleenecekse eğer en doğru pracrtice 7
class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel7({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModel7 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel7(
        userId: userId ?? this.userId, id: id ?? this.id, title: title ?? this.title, body: body ?? this.body);
  }
}
