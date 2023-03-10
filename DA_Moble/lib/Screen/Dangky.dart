import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';

class DangkyScreen extends StatefulWidget {
  const DangkyScreen({super.key});

  @override
  State<DangkyScreen> createState() => _DangkyScreenState();
}

class _DangkyScreenState extends State<DangkyScreen> {
  
  bool validate = false;
  final txtuser = TextEditingController();
  final txtemail = TextEditingController();
  final txtpassword = TextEditingController();
  final txtpassword1 = TextEditingController();
  @override
  void dispose() {
    txtuser.dispose();
    txtemail.dispose();
    txtpassword.dispose();
    txtpassword1.dispose();
    super.dispose();
  }

  Future dangki() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: txtemail.text.trim(),
      password: txtpassword.text.trim(),
    );
    //adduser(txtuser.text.trim());
  }

  Future adduser(
    String username,
   /// String email,
  ) async {
    await FirebaseFirestore.instance.collection('users').add({
      'user name': username,
     // 'email': email,
    });
  }

  void hiden() {
    setState(() {
      ishiden = !ishiden;
    });
    if (ishiden) {
      setState(() {
        iconshow = Icon(Icons.visibility_off);
      });
    } else {
      iconshow = Icon(Icons.visibility);
    }
  }

  var orange = Color.fromARGB(255, 255, 172, 47);

  bool ishiden = true;
  Icon iconshow = Icon(Icons.visibility_off);
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TrangchuSrceen()));
                                // Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black.withOpacity(0.6),
                                size: 30,
                              ),
                            ),
                          ),
                          Text(
                            '????ng k??',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 16),
                          ),
                          Text(' '),
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/logoapp1.png'),
                        width: r / 3,
                      ),
                      Text(
                        'T???o t??i kho???n',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: orange),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: txtuser,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: orange)),
                              border: OutlineInputBorder(),
                              labelText: "Nh???p t??n ng?????i d??ng",
                              prefixIcon: (Icon(Icons.account_circle)),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 58, 58, 58),
                                  fontSize: 15)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: txtemail,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: orange)),
                              border: OutlineInputBorder(),
                              labelText: "Nh???p ?????a chi email",
                              prefixIcon: (Icon(Icons.email_outlined)),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 58, 58, 58),
                                  fontSize: 15)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: txtpassword,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          obscureText: ishiden,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                            border: OutlineInputBorder(),
                            labelText: "Nh???p m???t kh???u",
                            prefixIcon: (Icon(Icons.lock_outline)),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                hiden();
                              },
                              child: iconshow,
                            ),

                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 15),

                            //prefixIcon: Icon(Icons.lock),
                            //border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: txtpassword1,
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          obscureText: ishiden,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: orange,
                              )),
                              border: OutlineInputBorder(),
                              labelText: "X??c nh???n l???i m???t kh???u",
                              prefixIcon: Icon(Icons.lock_person_outlined),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  hiden();
                                },
                                child: iconshow,
                              ),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 58, 58, 58),
                                  fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minWidth: r / 2, minHeight: 50),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(orange),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(15.0)))),
                        onPressed: () async {
                          setState(() {
                            //validate = true;
                            // Kiem tra mat khau co tu 6 ky tu tro len
                            if (txtpassword.text.length <= 6) {}

                            if (txtpassword1.text.length <= 6) {}
                            // Kiem tra password co trung nhau khong
                            if (txtpassword.text != txtpassword1.text) {
                              const snackBar = SnackBar(
                                  content: Text('Password Kh??ng Tr??ng Kh???p'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              try {
                                final newUser =
                                    dangki();
                                if (newUser != null) {
                                  const snackBar = SnackBar(
                                      content: Text('????ng K?? Th??nh C??ng!'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DangnhapScreen(),
                                      ));
                                } else {
                                  const snackBar = SnackBar(
                                      content: Text('T??i kho???n kh??ng h???p l???'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              } catch (e) {
                                if (txtemail.text.isEmpty == true &&
                                    txtpassword.text.isEmpty == true) {
                                  const snackBar = SnackBar(
                                      content: Text(
                                          'B???n Kh??ng Nh???p T??i Kho???n v?? M???t Kh???u'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                } else {
                                  const snackBar = SnackBar(
                                      content: Text('T??i kho???n kh??ng h???p l???'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            }
                          });
                        },
                        // child: const Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "T???o t??i kho???n",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
