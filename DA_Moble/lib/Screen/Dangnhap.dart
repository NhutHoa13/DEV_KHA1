import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Quanlytaikhoan.dart';
import 'package:flutter_application_1/Screen/Quenmatkhau.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/screen.dart';

class DangnhapScreen extends StatefulWidget {
  const DangnhapScreen({super.key});

  @override
  State<DangnhapScreen> createState() => _DangnhapScreenState();
}

class _DangnhapScreenState extends State<DangnhapScreen> {
  
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
   final _auth = FirebaseAuth.instance;
    bool validate = false;
      bool ishiden = true;
  Icon iconshow = Icon(Icons.visibility_off);
   dynamic validateTenDangNhap(String value) {
    if (validate == false) {
      return null;
    } else if (value.isEmpty) {
      return "Tài Khoản không bỏ trống";
    }
  }

  dynamic validatematKhau(String value) {
    if (value == false) {
      return null;
    } else if (value.isEmpty) {
      return "Mật Khẩu không thể bỏ trống";
    }
  }

  void hiden(){
    setState(() {
      if(ishiden=!ishiden){
        setState(() {
          iconshow = Icon(Icons.visibility_off);
        });
      }else{
        iconshow = Icon(Icons.visibility);
      }
    });
  }
  var orange = Color.fromARGB(255, 255, 172, 47);
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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            // Navigator.of(context)
                            //     .popUntil((route) => route.isFirst);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangchuSrceen()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black.withOpacity(0.6),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        ),
                        Text('           ')
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/logoapp1.png'),
                      width: r / 3,
                    ),
                    // Text(
                    //   'Chào mừng đến DSEL',
                    //   style: TextStyle(
                    //       fontSize: 28,
                    //       fontWeight: FontWeight.bold,
                    //       color: orange),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tên đăng nhập',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          TextField(
                            controller: txtemail,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: orange)),
                                border: OutlineInputBorder(),
                                hintText: "Nhập tên đăng nhập hoặc email",
                                prefixIcon: (Icon(Icons.account_circle)),
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 58, 58, 58),
                                    fontSize: 15)),
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
                            'Mật khẩu',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          TextField(
                            controller: txtpassword ,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            obscureText: ishiden,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: orange)),
                              border: OutlineInputBorder(),
                              hintText: "Nhập mật khẩu",
                              prefixIcon: (Icon(Icons.lock_outline)),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  hiden();
                                },
                                child: iconshow,
                              ),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  checkColor: Colors.white,
                                  //fillColor: MaterialStateColor,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Text('Nhớ mật khẩu'),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const QuenmatkhauScreen()));
                            },
                            child: Text(
                              'Quên mật khẩu',
                              style: TextStyle(
                                  color: orange,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: r - mlr, minHeight: 50),
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
                      validate = true;
                    });
                    // Kiem tra mat khau co tu 6 ky tu tro len
                    try {
                      final _user = await _auth.signInWithEmailAndPassword(
                          email: txtemail.text,
                          password: txtpassword.text);
                      _auth.authStateChanges().listen((event) {
                        if (event != null) {
                          txtemail.clear();
                          txtpassword.clear();
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            'home',
                            (route) => false,
                          );
                        }
                      });
                    } on FirebaseAuthException catch (e) {
                      final snackBar = SnackBar(
                          content: Text('Email Hoặc Mật Khẩu Không Đúng'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } catch (e) {
                      final snackBar =
                          SnackBar(content: Text('Lỗi Kết Nối Đến Server!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                          child: Text(
                            "Đăng nhập",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bạn chưa có tài khoản?',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DangkyScreen(),));
                      },
                      child: Text('Đăng kí',style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
