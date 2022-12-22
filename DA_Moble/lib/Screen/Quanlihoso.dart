import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Caidat.dart';
import 'package:flutter_application_1/Screen/Chinhsuahoso.dart';

import 'package:flutter_application_1/main.dart';

class QuanlihosoScreen extends StatefulWidget {
  const QuanlihosoScreen({super.key});

  @override
  State<QuanlihosoScreen> createState() => _QuanlihosoScreenState();
}

class _QuanlihosoScreenState extends State<QuanlihosoScreen>  {
  

  
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Column(
                    
                    children: [
                         
                            Text(
                                'Quản lí hồ sơ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16),
                              ),
                       Row(
                          
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        
                           Row(
                             children: [
                               Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: ClipOval(
                                  child: Image(
                                      height: 50,
                                      width: 50,
                                      image: AssetImage('assets/images/logo.jpg')),
                                ),
                          ),
                          InkWell(
                                onTap: () {
                                 
                                 // Navigator.popUntil(context, (route) => route.isFirst);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChinhsuahosoScreen()));
                                  
                                },
                                child: Text(
                                  'Chỉnh sửa hồ sơ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                      // decoration: TextDecoration.underline
                                      ),
                                ),
                          ),
                             ],
                           ),
                            
                            IconButton(onPressed: () {
                             //Navigator.popUntil(context, (route) => route.isFirst);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CaidatScreen()));
                            }, icon: Icon(Icons.settings,size: 30,)),
                            
                          ],
                        ),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 1)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         ContainersText(content: 'Cấp độ'),
                            
                          ContainersText1(content: '1/30')
                        ],),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 1)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         ContainersText(content: 'Tổng điểm kinh nghiệm'),
                            
                          ContainersText1(content: '66513')
                        ],),
                      ),Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 1)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         ContainersText(content: 'Xếp bậc hiện tại'),
                            
                          ContainersText1(content: 'Đồng')
                        ],),
                      ),Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 1)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         ContainersText(content: 'Tổng trận đấu'),
                            
                          ContainersText1(content: '100')
                        ],),
                      ),Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 1)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         ContainersText(content: 'Tỉ lệ thắng'),
                            
                          ContainersText1(content: '100%')
                        ],),
                      ),
                      
                ],
              ),
             
              ]
            ),
          ),
          
        ),
         
       
      );
  }
}

class ContainersText extends StatelessWidget {
  const ContainersText({super.key, required this.content});
  final content;

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16
            // decoration: TextDecoration.underline
            ),
      ),
    );
  }
}
class ContainersText1 extends StatelessWidget {
  const ContainersText1({super.key, required this.content});
  final content;

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(
            color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.bold, fontSize: 16
            // decoration: TextDecoration.underline
            ),
      ),
    );
  }
}
class imgAvatar extends StatelessWidget {
  const imgAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            fit: StackFit.expand,
            children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: SizedBox(
              height: 46,
             width: 46, 
            child: IconButton(
              icon: Image(image: AssetImage('assets/images/camera (1).png')),
              iconSize: 50,
              onPressed: () {},
            )
          ))
            ],
          ),
        )
      ],
    );
  }
}