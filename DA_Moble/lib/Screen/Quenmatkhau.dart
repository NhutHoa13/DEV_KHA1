import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/CapNhatMatKhau.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';
import 'package:flutter_application_1/Screen/Laymatkhau.dart';

import '../contraints/color.dart';

class QuenmatkhauScreen extends StatefulWidget {
  const QuenmatkhauScreen({super.key});

  @override
  State<QuenmatkhauScreen> createState() => _QuenmatkhauScreenState();
}

class _QuenmatkhauScreenState extends State<QuenmatkhauScreen> {
  final _formkey = GlobalKey<FormState>();
  var email="";
  final _emailcontroller = TextEditingController();
  @override
  void dispose(){
    _emailcontroller.dispose();
    super.dispose();
  }
   forgot() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailcontroller.text.trim());
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content: Text('Password reset link sent')
          );  
        });
          } on FirebaseAuthException catch(e){
            print(e);
            showDialog(context: context, builder: (context){
              return AlertDialog(
                content: Text(e.message.toString()),
              );
            });
          }
  }
 
  var myLabelStyle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  var myTextStyle =
      TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0));

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DangnhapScreen()));
                              // Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image(
                        image: AssetImage('assets/images/logoapp1.png'),
                        width: r / 2,
                      ),
                    ),
                    Text(
                      'Qu??n m???t kh???u',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: orange),
                    ),
                    Text(
                        'Nh???p l???i ?????a ch??? email ????? nh???n l???i ???????ng d???n ?????t m???t kh???u',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _emailcontroller,
                        style: myTextStyle,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                            border: OutlineInputBorder(),
                            labelText: "Email",
                            prefixIcon: (Icon(Icons.email_outlined)),
                            labelStyle: myLabelStyle),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: r / 2, minHeight: 45),
                    
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)))),
                      onPressed:(){
                        forgot();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DangnhapScreen(),));
                      },
                      child: Text(
                        "G???i mail",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
