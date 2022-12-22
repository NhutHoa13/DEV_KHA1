import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/choicanhan/Tongket.dart';
import 'package:flutter_application_1/Screen/screen.dart';
import 'package:get/get.dart';
//import 'package:giffy_dialog/giffy_dialog.dart';

class man4 extends StatefulWidget {
  int socau;
  man4({super.key, required this.socau});

  @override
  State<man4> createState() => _man4State();
}

class _man4State extends State<man4> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("data/man4.json"),
        builder: (context, snapshot) {
          var mydata = json.decode(snapshot.data.toString());

          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text("loading"),
              ),
            );
          } else {
            return quiz(
                mydata: mydata,
                marks: 0,
                vie: 0,
                level: 0,
                socau: widget.socau,
                uid: '');
          }
        });
  }
}

class quiz extends StatefulWidget {
  final String uid;
  var mydata;
  int socau;
  int marks;
  int vie;
  int level;
  quiz(
      {super.key,
      required this.mydata,
      required this.marks,
      required this.level,
      required this.vie,
      required this.uid,
      required this.socau});

  @override
  State<quiz> createState() => _quizState(mydata, marks, level, vie, uid);
}

class _quizState extends State<quiz> {
  String message = "Score: " + "0";
  String levels = "Level: " + "1";
  String vies = "3";

  final String uid;
  var mydata;
  int marks = 0;
  int vie = 3;
  int level = 1;
  _quizState(this.mydata, int marks, int level, int vie, this.uid);
  Color ch = Colors.indigo;
  Color rig = Colors.green;
  Color wro = Colors.red;

  int i = 1;
  int timer = 20;
  int click = 20;
  String showtimer = "10";

  Map<String, Color> btncolor = {
    "a": Colors.white,
    "b": Colors.white,
    "c": Colors.white,
    "d": Colors.white,
  };

  bool canceltimer = false;
  int g = 0;

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      //   setState(() async {
      //     if (timer < 1 ) {
      //        t.cancel();
      //       Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (context) => TongketScreen(marks: marks),
      // ));
      //     } else if (canceltimer == true) {
      //       t.cancel();

      //     } else {
      //       timer = timer - 1;
      //     }
      //     showtimer = timer.toString();
      //   });
    });
  }

  void nextquestion() async {
    click = 20;
    canceltimer = false;
    timer = 10;

    setState(() {
      if (i < widget.socau) {
        level++;
        levels = 'Level :' + "$level" + "/" + widget.socau.toString();
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => TongketScreen(marks: marks),
        ));
      }
      btncolor["a"] = Colors.white;
      btncolor["b"] = Colors.white;
      btncolor["c"] = Colors.white;
      btncolor["d"] = Colors.white;
    });
    starttimer();
  }

  void quit() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => TongketScreen(marks: marks),
    ));
  }

  void checkanswer(String k) async {
    if (click == 20) {
      if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
        marks = marks + 5;
        message = "Score: " + "$marks";
        ch = rig;
      } else {
        ch = wro;
        vie = vie - 1;
        vies = "$vie";
      }
      setState(() {
        btncolor[k] = ch;
        if (k != "a" &&
            mydata[2][i.toString()] == mydata[1][i.toString()]["a"]) {
          btncolor["a"] = rig;
        }
        if (k != "b" &&
            mydata[2][i.toString()] == mydata[1][i.toString()]["b"]) {
          btncolor["b"] = rig;
        }
        if (k != "c" &&
            mydata[2][i.toString()] == mydata[1][i.toString()]["c"]) {
          btncolor["c"] = rig;
        }
        if (k != "d" &&
            mydata[2][i.toString()] == mydata[1][i.toString()]["d"]) {
          btncolor["d"] = rig;
        }
        canceltimer = true;
      });
      click = 30;
      if (vie > 0) {
        Timer(Duration(seconds: 2), nextquestion);
      } else {
        Timer(Duration(seconds: 2), quit);
      }
    }
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: MaterialButton(
        onPressed: () => {checkanswer(k)},
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 400,
        height: 45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(Icons.arrow_back, color: Colors.black),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                
                                child: CupertinoAlertDialog(
                                
                                  
                                  title: Center(child: Text('TẠM DỪNG')),
                                  content: Text('Bạn không thể tiếp tục hoàn thành bài học'),
                                  actions: [
                                    Column(
                                     
                                      children: [
                                        Center(
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              }, child: Text('Tiếp tục',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize:18 ),)),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),));
                                            },
                                            child: Text('Thoát',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize:16 ))),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });

                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (context) => HomeScreen(),
                        // ));
                      },
                    ),
                    Text(
                      showtimer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          vies,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 180,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Text(
                          message,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Text(
                          levels,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  padding: EdgeInsets.fromLTRB(5, 1, 5, 0),
                  margin: EdgeInsets.fromLTRB(5, 1, 5, 0),
                  alignment: Alignment.center,
                  child: Text(
                    mydata[0][i.toString()],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 1, 5, 0),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      choicebutton('a'),
                      choicebutton('b'),
                      choicebutton('c'),
                      choicebutton('d'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
