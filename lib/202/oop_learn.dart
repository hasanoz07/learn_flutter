import 'dart:io';

import 'package:learn_flutter/202/custom_excepiton.dart';

class FileDownload<T>{
bool? downloadItem(FileItem? fileItem){
if (fileItem==null) {
 throw FileDownloadException();
}
print("data");
}

}class FileItem{
  final String name;
  final File file;


  FileItem(this.name, this.file);
  }