import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';
import 'package:flutter_application_1/object/xephangdoikhang.dart';

import '../contraints/color.dart';
import '../provider/xephangman.dart';

class XemXhangMan extends StatefulWidget {
   int marks=0;
   String man;
   XemXhangMan({super.key, required this.marks,required this.man});

  @override
  State<XemXhangMan> createState() => _XemXhangManState();
}

class _XemXhangManState extends State<XemXhangMan> {
 List<DoikhangObject> lsContact = [];
  void _LoadDanhSach()async{
    final data = await ManProvider.getAllContacts();
    setState(() {
      lsContact = data;});}
  @override
  void initState(){
    super.initState();
    _LoadDanhSach();}

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            "Màn " + widget.man,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.black,
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(children: [
              Expanded(
                child: ListView.builder(
                  itemCount: lsContact.length,
                  itemBuilder: (context, index) {
                    return ManFrame(
                      doikhangObject: lsContact[index],
                    );
                  },
                ),
              )
            ])),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          decoration: BoxDecoration(
              color: Colors.orange,
              gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                   Colors.white,
                  
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '--',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/images/profile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Nhut Hoa',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/images/trophy (4).png'),
                    ),
                    Text(
                      "${widget.marks}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
       
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: r,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Text(
                'Quay lại',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
              )
                ],)
          ),
        )
      ]),
    );
  }
}
