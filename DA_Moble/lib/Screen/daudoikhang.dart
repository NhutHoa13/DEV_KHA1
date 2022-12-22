import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/choicanhan/Tongket.dart';
import 'package:flutter_application_1/Screen/screen.dart';

class DaudoikhangScreen extends StatefulWidget {
  DaudoikhangScreen({super.key});

  @override
  State<DaudoikhangScreen> createState() => _DaudoikhangScreenState();
}

class _DaudoikhangScreenState extends State<DaudoikhangScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("data/quiz.json"),
        builder: (context, snapshot) {
          var mydata = json.decode(snapshot.data.toString());

          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text("loading"),
              ),
            );
          } else {
            return quiz(mydata: mydata, marks: 0, vie: 0, level: 0, uid: '');
          }
        });
  }
}

class quiz extends StatefulWidget {
  final String uid;
  var mydata;

  int marks;
  int vie;
  int level;
  quiz({
    super.key,
    required this.mydata,
    required this.marks,
    required this.level,
    required this.vie,
    required this.uid,
  });

  @override
  State<quiz> createState() => _quizState(mydata, marks, level, vie, uid);
}

class _quizState extends State<quiz> {
  String message = "0";
  String levels = "Lv: " + "1 /15";
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
  int socaudung = 0;
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
      if (i < 15) {
        level++;
        levels = 'Lv :' + "$level" + "/15";
        i++;
      } else if (marks > 30) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DoikhangthangScreen(
            marks: marks,
            level: socaudung,
          ),
        ));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DoikhangthangScreen(
            marks: marks,
            level: socaudung,
          ),
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
        socaudung++;
        marks = marks + 5;
        message = "$marks";
        ch = rig;
      } else {
        ch = wro;
        marks = marks - 3;
         message = "$marks";

        // vie = vie - 1;
        // vies = "$vie";
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
      Timer(Duration(seconds: 2), nextquestion);
      // if (vie > 0) {
      //
      // } else {
      //   Timer(Duration(seconds: 2), quit);
      // }
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
          //margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          padding: EdgeInsets.fromLTRB(5, 30, 5, 0),
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
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 130,
                        child: Stack(
                          children: [
                            Positioned(
                                left: 20,
                                top: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      color: Color.fromARGB(255, 199, 196, 196),
                                      borderRadius: BorderRadius.circular(20)),
                                  constraints: BoxConstraints(
                                      maxHeight: 40, maxWidth: 130),
                                )),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          'assets/images/profile.png'),
                                    )),
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 16,
                              child: Text(
                                'Nhut Hoa',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Positioned(
                              left: 47,
                              top: 45,
                              child: Container(
                                width: 90,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    message,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    
                     Column(
                       children: [
                        
                         Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                           child: Text(
                              showtimer,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                              ),
                            ),
                         ),
                          
                       ],
                     ),

                      Container(
                        width: 190,
                        height: 130,
                        child: Stack(
                          children: [
                            Positioned(
                                left: 30,
                                top: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      color: Color.fromARGB(255, 199, 196, 196),
                                      borderRadius: BorderRadius.circular(20)),
                                  constraints: BoxConstraints(
                                      maxHeight: 40, maxWidth: 130),
                                )),
                            Positioned(
                              top: 0,
                              left: 126,
                              child: CircleAvatar(
                                radius: 27,
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          'assets/images/profile.png'),
                                    )),
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 16,
                              child: Text(
                                'Nhut Hoa',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                            Positioned(
                              left: 43,
                              top: 45,
                              child: Container(
                                width: 90,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    '500',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    
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
                          fontSize: 16),
                    ),
                  )
                 
                ],
              ),
              SizedBox(height: 20,),
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
