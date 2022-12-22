import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_lichsudau.dart';
import 'package:flutter_application_1/model/db_lichsudau.dart';

import '../../object/lichsudau.dart';
import '../../provider/lichsudauthua.dart';

class LoseScreen extends StatefulWidget {
  const LoseScreen({super.key});

  @override
  State<LoseScreen> createState() => _LoseScreenState();
}

class _LoseScreenState extends State<LoseScreen> {
   List<HistoryObject> lsContact = [];
  void _LoadDanhSach()async{
    final data = await HistoryLoseProvider.getAllContacts();
    setState(() {
      lsContact = data;});}
  @override
  void initState(){
    super.initState();
    _LoadDanhSach();}
  @override
  Widget build(BuildContext context) {
    return Container(
            // height: MediaQuery.of(context).size.height * 0.5,
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount:lsContact. length,
                    itemBuilder: (context, index) {
                      return Frame_DauThua(
                        historyObject: lsContact[index],
                      );
                    },
                  ),
                )
              ]));
  }
}