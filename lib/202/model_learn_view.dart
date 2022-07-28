import 'package:flutter/material.dart';
import 'package:learn_flutter/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user8=PostModel7(body: "user8user8");
  @override
  void initState() {
    
    super.initState();
    final user1 = PostModel1()
      ..id = 1
      ..title = "user1"
      ..userId = 1;
    user1.body = "user1user1";
    final user2 = PostModel2("user2user2", 2, "user2", 2);
    user2.body = "changeuser2user2";
    // ignore: unused_local_variable
    final user3 = PostModel3(3, 3, "user3", "user3user3");
    // user3.body="changeuser3user3";
    // ignore: unused_local_variable
    final user4 = PostModel4(userId: 4, id: 4, title: "user4", body: "user4user4"); //Öneri bu
    // user4.body="changeuser3user3";
    //local için öneri bu =5 4 mantıklı
    final user5 = PostModel5(userId: 5, id: 5, title: "user5", body: "user5user5");//VB önerisi bu
    //print(user5.Body);
    // ignore: unused_local_variable
    final user6=PostModel6();
    //service için en mantıklısı 7
    // ignore: unused_local_variable
    final user7=PostModel7(body: "user7user7");
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){
    setState(() {
      user8=user8.copyWith(title: "titleuser8");
      user8.updateBody("yeni data");
    });}),appBar: AppBar(title: Text(user8.body??"Not has any data"),),);
  }
}
