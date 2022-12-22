import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_lichsudau.dart';
import 'package:flutter_application_1/model/db_lichsudau.dart';

class LoseScreen extends StatefulWidget {
  const LoseScreen({super.key});

  @override
  State<LoseScreen> createState() => _LoseScreenState();
}

class _LoseScreenState extends State<LoseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
            // height: MediaQuery.of(context).size.height * 0.5,
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount:db_lichsudau.historys.length,
                    itemBuilder: (context, index) {
                      return Frame_DauThua(
                        historys: db_lichsudau.historys[index],
                      );
                    },
                  ),
                )
              ]));
  }
}