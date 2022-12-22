import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/Screen/Doikhang.dart';

import 'package:flutter_application_1/Screen/Quanlihoso.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/XemXepHangMan.dart';
import 'package:flutter_application_1/Screen/Xemxephang.dart';
import 'package:flutter_application_1/Screen/xemhoso.dart';

import 'choicanhan/Bando.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onTapIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> lsScreen = [
    BandoScreen(marks: 500,),
    DoikhangScreen(), // Text('Màn hình 1'),
    phanhang(),
    QuanlihosoScreen()
    // NewsFeed(), //Text('Màn hình 4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Scrollbar(
        child: Center(
          child: lsScreen.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(microseconds: 600),
        height: 50.0,
        items: [
          Image(height: 50, image: AssetImage('assets/images/map.png')),
          Image(height: 50, image: AssetImage('assets/images/swords.png')),
          Image(height: 50, image: AssetImage('assets/images/trophy (1).png')),
          Image(height: 50, image: AssetImage('assets/images/woman.png')),
        ],
        onTap: _onTapIndex,
      ),
    );
  }
}
