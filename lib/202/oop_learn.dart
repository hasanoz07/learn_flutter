import 'dart:io';
import 'package:learn_flutter/202/custom_excepiton.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
  void toShare(String path) async {
    // ignore: deprecated_member_use
    await launch(path);
  }
}

class FileDownload<T> extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    print("data");
  }
  
  @override
  void share(args) {
    // TODO: implement share
  }


}


class FileItem {
  final String name;
  final File file;
  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload{
  void share(args);
}