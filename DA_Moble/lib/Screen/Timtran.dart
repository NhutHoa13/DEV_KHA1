import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dapan.dart';
import 'package:flutter_application_1/Screen/Doikhang.dart';
import 'package:flutter_application_1/Screen/daudoikhang.dart';
import 'package:flutter_application_1/Screen/screen.dart';

class TimtranScreen extends StatefulWidget {
  const TimtranScreen({super.key});

  @override
  State<TimtranScreen> createState() => _TimtranScreenState();
}

class _TimtranScreenState extends State<TimtranScreen> {
  
void initState(){
      super.initState();
      Timer(Duration(seconds: 5),(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DaudoikhangScreen(),
         ));
      });
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
         decoration:BoxDecoration(
          gradient:LinearGradient(
            colors:[
              Colors.orange,
              Colors.yellow,
             // Colors.green
            ],
            begin:Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Text(
            'SẴN SÀNG...',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
        
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                 
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          )),
                    ),
                   
                        Text(
                      'User name',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                     
                      children: [
                      Image(
                        height: 20,
                        image: AssetImage('assets/images/trophy (5).png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                          child: Text('1000',style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        )
                    ],)
                  ],
                ),
                Center(
                    child: Text(
                  'SV',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
                Column(
                  children: [
                    CircleAvatar(
                        radius: 43,
                          backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),
                         Text(
                      'User name',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(                 
                      children: [
                      Image(
                        height: 20,
                        image: AssetImage('assets/images/trophy (5).png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                          child: Text('1000',style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        )
                    ],)
                  ],
                ),
                
              ],
            ),
          ),
          Center(
            child: TextButton(onPressed: (){
            
             Navigator.pop(context);
            }, 
                      child: Text('Hủy',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
          )
         
        ]),
      ),
    );
  }
}

