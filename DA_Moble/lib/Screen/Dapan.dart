import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DapanScreen extends StatefulWidget {
  const DapanScreen({super.key});

  @override
  State<DapanScreen> createState() => _DapanScreenState();
}

class _DapanScreenState extends State<DapanScreen> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  int num = 100;
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: InkWell(
                            onTap: () {
                              // Navigator.of(context).popUntil((route) => route.isFirst);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             TrangchuSrceen()));
                              // Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Text(
                                'Scores: ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${num}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                 Text.rich(
                  TextSpan(
                    text: "Question 1",
                    //style: Them.of(context).textTheme.headline4,
                    children: [
                        TextSpan(text: "/10")
                    ]
                  )
                 ),
                 Divider(thickness: 1.5,),
              //  Expanded(child: PageView.builder(itemBuilder:(context,index) => ));
                   
                  
                  ],
                ))));
  }
}
