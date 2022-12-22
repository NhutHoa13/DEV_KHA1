import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Doianh.dart';
import 'package:flutter_application_1/Screen/Doimatkhau.dart';
import 'package:flutter_application_1/Screen/Quanlihoso.dart';
import 'package:flutter_application_1/Screen/screen.dart';
import 'package:flutter_application_1/model/counter_reader.dart';

class ChinhsuahosoScreen extends StatefulWidget {
  const ChinhsuahosoScreen({super.key, required this.storage});
  final CounterReader storage;
  @override
  State<ChinhsuahosoScreen> createState() => _ChinhsuahosoScreenState();
}

class _ChinhsuahosoScreenState extends State<ChinhsuahosoScreen> {
  final controller_text_data = TextEditingController();
  final controller_email = TextEditingController();
  String _counter = "cao ky";
  String email = "caoky@gmail.com";

  Future<File> _incrementCounter() async {
    setState(() {
      _counter = controller_text_data.text;
    });
    return widget.storage.writeCounter(_counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.storage.readCounter().then((
      String value,
    ) {
      setState(() {
        _counter = value;
        // email = value;
      });
    });
  }

  // final controller_email = TextEditingController();
  // String email = "caoky@gmail.com";
  // Future<File> _incrementCounteremail() async {
  //   setState(() {
  //     email = controller_email.text;
  //   });
  //   return widget.storage.writeCounter(_counter);
  // }

  // @override
  // void initStateemail() {
  //   // TODO: implement initState
  //   super.initState();
  //   widget.storage.readCounter().then((String value) {
  //     setState(() {
  //       email = value;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    var kieu = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20);
    var orange = Color.fromARGB(255, 255, 172, 47);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //screen_home(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const QuanlihosoScreen()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black.withOpacity(0.6),
                      size: 30,
                    ),
                  ),
                  Text(
                    'Chỉnh sửa hồ sơ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 16),
                  ),
                  Text('   ')
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/images/logo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90, 70, 0, 0),
                      child: Align(
                        child: Icon(
                          Icons.draw_sharp,
                          //border_color_sharp
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoianhScreen(),
                          ));
                    },
                    child: Text(
                      'Thay đổi ảnh đại diện',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tên',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    TextField(
                      controller: controller_text_data,
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: orange)),
                        border: OutlineInputBorder(),
                        hintText: '$_counter',

                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 58, 58, 58),
                            fontSize: 15),

                        //prefixIcon: Icon(Icons.lock),
                        //border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    TextField(
                      controller: controller_email,
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: orange)),
                        border: OutlineInputBorder(),
                        hintText: "$email",

                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 58, 58, 58),
                            fontSize: 15),

                        //prefixIcon: Icon(Icons.lock),
                        //border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),

              ///Mật khẩu

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mật khẩu',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    TextField(
                      onTap: () {
                        // Navigator.of(context)
                        //     .popUntil((route) => route.isFirst);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DoimatkhauScreen()));
                      },
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: orange)),
                        border: OutlineInputBorder(),
                        hintText: "*******",

                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 58, 58, 58),
                            fontSize: 15),

                        //prefixIcon: Icon(Icons.lock),
                        //border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),

              ///nút lưu
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 40, minWidth: 200),
                    child: TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(orange),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: orange)))),
                        onPressed: _incrementCounter,
                        child: Text(
                          'cập nhật',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
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
