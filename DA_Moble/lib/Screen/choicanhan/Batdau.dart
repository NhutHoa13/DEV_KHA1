import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/Screen/choicanhan/Bando.dart';
import 'package:flutter_application_1/Screen/choicanhan/getjason.dart';
import 'package:flutter_application_1/Screen/choicanhan/man2.dart';
import 'package:flutter_application_1/Screen/screen.dart';


import '../../contraints/button.dart';
import '../../contraints/text.dart';

class BatdauScreen extends StatefulWidget {
   int marks;
   Widget widget;
   String text;
   String title;
   BatdauScreen({super.key,required this.marks,required this.widget,required this.text,required this.title});

  @override
  State<BatdauScreen> createState() => _BatdauScreenState();
}

class _BatdauScreenState extends State<BatdauScreen> {
int socau=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),));
        }, icon: Icon(Icons.arrow_back,color:Colors.white),),
        title: Text('Bat dau'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
             
              
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      button(context, widget.text,widget.title,widget.widget),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Score: ${widget.marks}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Số câu hỏi: $socau ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          text1(context, Colors.green, 'Dễ', () {
                             setState(() {
                                socau=10;
                      });
                          }),
                          text1(context, Colors.yellow, 'Vừa', () {
                            setState(() {
                              socau=15;
                              
                            });
                          }),
                          text1(context, Colors.red, 'Khó', () {
                             setState(() {
                               socau=20;
                             });
                          }),
                        ],
                      ),
                      button_orange(context, 'Bắt đầu', 50, () {
                    //  widget.onTap()
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => widget.widget
                        ));
                      
                      }),
                      button_orange(context, 'Xếp hạng ', 100, () {}),
                    ],
                  ),
                ),
              )
      ],)
    );
  }
}