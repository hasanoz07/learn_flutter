// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learn_flutter/products/widget/button/answer_button.dart';
import 'package:learn_flutter/products/widget/button/loading_button.dart';
import 'package:learn_flutter/products/widget/callback_drodown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CallBackDropdown(
              onUserSelected: (user) {
                print(user.name);
              },
            ),
            AnswerButton(
              onNumber: (number) {
                return number % 3 == 1;
              },
            ),
            LoadingButton(
              title: "LodingButton",
              callback: () async {
              await Future.delayed(const Duration(seconds: 2));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;
  CallBackUser(this.name, this.id);

// TODO: Dummy Remove it
  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser("oz", 1),
      CallBackUser("oz2", 2),
      CallBackUser("oz3", 3),
    ];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
