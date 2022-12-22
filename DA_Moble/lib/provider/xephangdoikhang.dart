import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/object/xephangcanhan.dart';
import 'package:flutter_application_1/object/xephangdoikhang.dart';

class DoikhangProvider{
  static Future<List<dynamic>> readJsonData() async{
    var jsonText = await rootBundle.loadString('data/listrank.json');

    var data = json.decode(jsonText);


    return data['contacts'];
  }
 static Future<List<DoikhangObject>> getAllContact() async{
    List<DoikhangObject> lsResult = [];
    List<dynamic> data = await readJsonData();

    lsResult = data.map((e) => DoikhangObject.fromJson(e)).toList();
    return lsResult;

  }
  static Future<List<DoikhangObject>> getAllContacts()async{
    List<DoikhangObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => DoikhangObject.fromJson(e)).toList();
    return lsResult;
  }
  // static Future<List<ContacObject>> searchContact(String strSearch) async {
  //   List<ContacObject> lsResult = [];
  //   List<dynamic> data = await readJsonData();
  //   data.forEach((element) {
  //     ContacObject con = ContacObject.fromJson(element);
  //     if(con.name.toUpperCase().contains(strSearch.toUpperCase())||
  //       con.phone.contains(strSearch)){
  //         lsResult.add(con);
  //       }
  //   });
  //   return lsResult;
  // }
}