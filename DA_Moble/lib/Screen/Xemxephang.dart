import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Doikhang.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';

class phanhang extends StatefulWidget {
  const phanhang({super.key});

  @override
  State<phanhang> createState() => _phanhangState();
}

class _phanhangState extends State<phanhang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      padding: EdgeInsets.all(5),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Giải đấu xếp hạng',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 30,
                width: 30,
                image: AssetImage('assets/images/shield (8).png')),
            SizedBox(
                height: 40,
                width: 40,
                child:
                    Image(image: AssetImage('assets/images/shield (7).png'))),
            SizedBox(
                height: 60,
                width: 60,
                child:
                    Image(image: AssetImage('assets/images/shield (2).png'))),
            SizedBox(
                height: 40,
                width: 40,
                child:
                    Image(image: AssetImage('assets/images/shield (7).png'))),
            Image(
                height: 30,
                width: 30,
                image: AssetImage('assets/images/shield (8).png')),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.orange, width: 2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image(
                      height: 25,
                      image: AssetImage('assets/images/medal2.png')),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      width: 50,
                      height: 50,
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
                  Text(
                    '1000',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                      height: 25,
                      image: AssetImage('assets/images/medal (1).png')),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      width: 90,
                      height: 90,
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
                  Text(
                    '1000',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                      height: 25,
                      image: AssetImage('assets/images/medal (3).png')),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      width: 50,
                      height: 50,
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
                  Text(
                    '1000',
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
        Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: db_context.items.length,
                    itemBuilder: (context, index) {
                      return CanhanFrame(
                        info: db_context.items[index],
                      );
                    },
                  ),
                )
              ]))
        ]),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          decoration: BoxDecoration(
              color: Colors.orange,
              gradient: LinearGradient(colors: [
                Colors.orange,
                Colors.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '99',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
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
          
                    Text(
                      '1000 KN',
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
      ]),
    ));
  }
}
