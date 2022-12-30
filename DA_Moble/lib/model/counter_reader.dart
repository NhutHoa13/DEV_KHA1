import 'dart:io';

import 'package:path_provider/path_provider.dart';

class CounterReader {
  //đường dẫn
  Future<String> get _localPath async {
    final Directory path = await getApplicationDocumentsDirectory();
    return path.path;
  }

//thư mục chứa
  Future<File> get _localFile async {
    final p = await _localPath;
    // print('$p/counter.txt');
    return File('$p/counter.txt');
  }

//đọc giá trị counter từ file
  Future<String> readCounter() async {
    try {
      final f = await _localFile;
      String s = await f.readAsString();
      return s;
    } catch (e) {
      return "null";
    }
  }

//lưu trữ
  Future<File> writeCounter(String counter) async {
    final f = await _localFile;
    return f.writeAsString('$counter');
  }

  Future<File> writeCounter2(String counter) async {
    final f = await _localFile;
    return f.writeAsString('$counter');
  }
}
