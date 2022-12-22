import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/Quanlytaikhoan.dart';

class TrangchuSrceen extends StatefulWidget {
  const TrangchuSrceen({super.key});

  @override
  State<TrangchuSrceen> createState() => _TrangchuSrceenState();
}

class _TrangchuSrceenState extends State<TrangchuSrceen> {
 

  var style = Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withOpacity(0.3),
        style: BorderStyle.solid,
        width: 2,
      ),
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15.0),
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
        body: Container(
           height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
      child: SingleChildScrollView(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: r / 2,
                      height: r / 2,
                      child: Image(
                        image: AssetImage('assets/images/logoapp1.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CAMEL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.orange),
                          ),
                          Container(
                            
                            child: Text(
                              'english',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
              SizedBox(height: 300,),
              Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 50, minWidth: r),
                    child: TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(orange),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: orange)))),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DangkyScreen()));
                        },
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 50, minWidth: r),
                      child: OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1, color: orange),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QuanlitaikhoanScreen()));
                          },
                          child: Text(
                            'Tôi đã có tài khoản',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
