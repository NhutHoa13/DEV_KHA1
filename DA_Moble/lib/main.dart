import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/choicanhan/Bando.dart';
import 'package:flutter_application_1/Screen/Caidat.dart';
import 'package:flutter_application_1/Screen/CapNhatMatKhau.dart';
import 'package:flutter_application_1/Screen/Chinhsuahoso.dart';
import 'package:flutter_application_1/Screen/Choicanhan.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';
import 'package:flutter_application_1/Screen/Dapan.dart';
import 'package:flutter_application_1/Screen/Doianh.dart';
import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/Doikhangthua.dart';
import 'package:flutter_application_1/Screen/Doimatkhau.dart';

import 'package:flutter_application_1/Screen/Hoanthanhbaihoc.dart';

import 'package:flutter_application_1/Screen/Laymatkhau.dart';


import 'package:flutter_application_1/Screen/Quanlihoso.dart';
import 'package:flutter_application_1/Screen/Quanlytaikhoan.dart';
import 'package:flutter_application_1/Screen/Quenmatkhau.dart';
import 'package:flutter_application_1/Screen/Timtran.dart';
import 'package:flutter_application_1/Screen/choicanhan/Batdau.dart';
import 'package:flutter_application_1/Screen/choicanhan/Tongket.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/XemXepHangMan.dart';
import 'package:flutter_application_1/Screen/Xemlichsudau.dart';
import 'package:flutter_application_1/Screen/Xemxephang.dart';
import 'package:flutter_application_1/Screen/aaa.dart';
import 'package:flutter_application_1/Screen/daudoikhang.dart';
import 'package:flutter_application_1/Screen/quiz.dart';
import 'package:flutter_application_1/Screen/screen.dart';
import 'package:flutter_application_1/Screen/test.dart';
import 'package:flutter_application_1/Screen/xemhoso.dart';
import 'package:flutter_application_1/model/db_content.dart';
import 'package:flutter_application_1/model/db_lichsudau.dart';

import 'Screen/Trangchu.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    db_context.createData();
  db_lichsudau.createData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirebaseAuth.instance.currentUser == null ? 'trangchu': 'home',
      routes: {
        'trangchu': (context) => TrangchuSrceen(),
        'home': (context) => HomeScreen(),

      }
      
    );
  }
}
