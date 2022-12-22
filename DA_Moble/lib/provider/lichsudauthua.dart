import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/object/lichsudau.dart';


class HistoryLoseProvider{
  static Future<List<dynamic>> readJsonData() async{
    var jsonText = await rootBundle.loadString('data/history.json');

    var data = json.decode(jsonText);

    return data['lose'];
  }
 static Future<List<HistoryObject>> getAllContact() async{
    List<HistoryObject> lsResult = [];
    List<dynamic> data = await readJsonData();

    lsResult = data.map((e) => HistoryObject.fromJson(e)).toList();
    return lsResult;

  }
  static Future<List<HistoryObject>> getAllContacts()async{
    List<HistoryObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => HistoryObject.fromJson(e)).toList();
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