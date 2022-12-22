import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';
import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/screen.dart';

class QuanlitaikhoanScreen extends StatefulWidget {
  const QuanlitaikhoanScreen({super.key});

  @override
  State<QuanlitaikhoanScreen> createState() => _QuanlitaikhoanScreenState();
}

class _QuanlitaikhoanScreenState extends State<QuanlitaikhoanScreen> {
  
  bool isChecked = false;
  var style = Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withOpacity(0.3),
        style: BorderStyle.solid,
        width: 2,
      ),
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15.0),
      //color: Color.fromARGB(255, 25, 119, 197)
    ),
  );
  var style1 = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.6));
  //fontSize: 16);

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup2.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
     
        
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, r / 2 / 2, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black.withOpacity(0.6),
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      'Quản lý tài khoản',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16),
                    )
                  ],
                ),
                Image(
                  image: AssetImage('assets/images/logoapp1.png'),
                  width: r / 3,
                ),
                Text(
                  'Đăng nhập lại',
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold, color: orange),
                ),
                Text(
                  'Chọn một tài khoản lưu trên thiết bị',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: orange),
                    ),
                    onPressed: () {
                     //  Navigator.push(
               // context,
              //  MaterialPageRoute(
                 // builder: (context) =>
                     // ContactDetail(contact: lsContacts[index]),
               // ),
             // );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipOval(
                              child: Image(
                                  image: AssetImage('assets/images/logo.jpg')),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nhựt Hòa',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Nhuthoa@gmail.com',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: orange),
                    ),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DangnhapScreen()));
                      //Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipOval(
                                child: Icon(
                              Icons.add_circle_outline_outlined,
                              color: Colors.orange,
                              size: 40,
                            )),
                          ),
                          Text(
                            'Thêm tài khoản hoặc đăng nhập',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
    
    ));
  }
}
