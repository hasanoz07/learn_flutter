import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/303/reqrest_resource/model/resource_mdeol.dart';
import 'package:learn_flutter/303/reqrest_resource/service/resouce_service.dart';
import 'package:learn_flutter/products/global/resource_context.dart';

class ReqResProvider extends ChangeNotifier {
  final IReqresService reqresService;
  List<Data> resurces = [];
  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqResProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    _changeLoading();

    resurces = (await reqresService.fetchResourceItem())?.data ?? [];
    _changeLoading();
  }
  void saveToLocale(ResourceContext resourceContext){
  resourceContext.saveModel(ResourceModel(data: resurces));
}
}
