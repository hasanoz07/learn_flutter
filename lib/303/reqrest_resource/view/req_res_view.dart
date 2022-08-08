import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/101/%C4%B1mage_learn.dart';
import 'package:learn_flutter/303/reqrest_resource/model/resource_mdeol.dart';
import 'package:learn_flutter/303/reqrest_resource/product/extensions/string_extensions.dart';

import 'package:learn_flutter/303/reqrest_resource/product/service/project_dio.dart';
import 'package:learn_flutter/303/reqrest_resource/service/resouce_service.dart';

import 'package:learn_flutter/303/reqrest_resource/viewModel/reqres_provider.dart';
import 'package:learn_flutter/products/global/resource_context.dart';
import 'package:learn_flutter/products/global/theme_notifier.dart';
import 'package:provider/provider.dart';

import '../../../202/image_learn_202.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({Key? key}) : super(key: key);

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

// * class _ReqResViewState extends ReqResViewModal
class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (() {
            context.read<ThemeNotifier>().changeTheme();
          })),
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<ReqResProvider>().saveToLocale(context.read<ResourceContext>());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ImageLearn202();
                      },
                    ));
                  },
                  icon: Icon(Icons.save))
            ],
            title: context.watch<ReqResProvider>().isLoading
                ? CircularProgressIndicator(color: Theme.of(context).errorColor)
                : Text("data"),
          ),
          body: Column(
            children: [
              Selector<ReqResProvider, bool>(builder: (context, value, child) {
                return value ? Placeholder() : Text("data");
              }, selector: (context, provider) {
                return provider.isLoading;
              }),
              Expanded(child: _resourceListView(context, context.watch<ReqResProvider>().resurces)),
            ],
          ),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: context.watch<ReqResProvider>().resurces.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(color: Color(items[index].color?.colorValue ?? 0), child: Text(items[index].name ?? ""));
      },
    );
  }
}
