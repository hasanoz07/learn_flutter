import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_flutter/303/reqrest_resource/product/extensions/string_extensions.dart';
import 'package:learn_flutter/303/reqrest_resource/viewModel/req_res_view_modal.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({Key? key}) : super(key: key);

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends ReqResViewModal {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? CircularProgressIndicator() : Text("data"),
      ),
      body: ListView.builder(
        itemCount: resurces.length,
        itemBuilder: (BuildContext context, int index) {
          inspect(resurces[index]);
          return Card(color: Color(resurces[index].color?.colorValue??0), child: Text(resurces[index].name ?? ""));
        },
      ),
    );
  }
}
