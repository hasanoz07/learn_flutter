import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/202/cache/shared_learn_cache.dart';
import 'package:learn_flutter/303/reqrest_resource/model/resource_mdeol.dart';
import 'package:learn_flutter/303/reqrest_resource/product/service/project_dio.dart';
import 'package:learn_flutter/303/reqrest_resource/service/resouce_service.dart';
import 'package:learn_flutter/303/reqrest_resource/view/req_res_view.dart';

abstract class ReqResViewModal extends LoadingStatefull<ReqResView> with ProjectDioMixin{
  late final IReqresService reqresService;
  List<Data> resurces=[];
 @override
 void initState() {
   super.initState();
   reqresService=ReqresService(service);
  _fetch();
 }
Future<void> _fetch()async{
  changeLoading();
  resurces=(await reqresService.fetchResourceItem())?.data??[];
  changeLoading();
}
}