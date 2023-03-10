import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/choicanhan/Batdau.dart';
import 'package:flutter_application_1/Screen/choicanhan/getjason.dart';
import 'package:flutter_application_1/Screen/choicanhan/man2.dart';
import 'package:flutter_application_1/Screen/choicanhan/man3.dart';
import 'package:flutter_application_1/Screen/choicanhan/man4.dart';
import 'package:flutter_application_1/Screen/choicanhan/man5.dart';
import 'package:flutter_application_1/Screen/choicanhan/man6.dart';
import 'package:flutter_application_1/Screen/quiz.dart';
import 'package:flutter_application_1/contraints/button.dart';

import '../../contraints/text.dart';

class BandoScreen extends StatefulWidget {
  int marks;
  BandoScreen({super.key, required this.marks});

  @override
  State<BandoScreen> createState() => _BandoScreenState();
}

class _BandoScreenState extends State<BandoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/backgroup5.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 241, 198),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'EXP: 5548',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'C???p ?????: 1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                            height: 30,
                            width: 30,
                            image: AssetImage('assets/images/diamond.png')),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '35',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(context, ' 1', 'Gi???i thi???u',  getjason(socau: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(context, ' 2', 'Ch??o h???i',  man2(socau: 10)),
                        button(context, ' 3', 'Gia ????nh',man3(socau: 10)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(context, ' 4','Giao ti???p', man4(socau: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(context, ' 5', '??m nh???c',man5(socau: 10)),
                        button(context, ' 6', 'C??ng vi???c',man6(socau: 10)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(context, ' 7', '?????ng v???t',man2(socau: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(context, ' 8', '???m th???c',man2(socau: 10)),
                        button(context, ' 9', 'T??nh c??ch',man6(socau: 10)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(context, ' 10', 'B???n b??',man2(socau: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(context, ' 11', 'Du l???ch',man3(socau: 10)),
                        button(context, ' 12', '????? d??ng',man2(socau: 10)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(context, ' 13', 'M??u s???c',man2(socau: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        button(context, ' 14', 'Ch??o h???i',man4(socau: 10)),
                        button(context, ' 15', 'Ch??o h???i',man5(socau: 10)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container button(BuildContext context, String text, String title, Widget widget) {
  return Container(
    height: 80,
    width: 80,
    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/button.png'),
      ),
    ),
    child: TextButton(
                     
                    onPressed: ()  {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BatdauScreen(text: text,title: title, marks: 0,widget: widget,)));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            'M??n${text}',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        )),
  );
}
