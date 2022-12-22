import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';

class LaymatkhauScreen extends StatefulWidget {
  const LaymatkhauScreen({super.key});

  @override
  State<LaymatkhauScreen> createState() => _LaymatkhauScreenState();
}

class _LaymatkhauScreenState extends State<LaymatkhauScreen> {
   bool ishiden = true;
  Icon iconshow = Icon(Icons.visibility_off);
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
  var myLabelStyle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  var myTextStyle =
      TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0));

  @override
  Widget build(BuildContext context) {
    var mlr = 20;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        
       
        body: Container(
          margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
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
                                            Navigator.pop(context);
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
                        image: AssetImage('assets/images/language.png'),
                        width: r / 3,
                      ),
                    ),
                    Text(
                      'Đặt lại mật khẩu',
                      style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: orange),
                    ),
                    // Text('Nhập lại địa chỉ email để nhận lại đường dẫn đặt mật khẩu',
                    // style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight:FontWeight.bold )),
             
                   
                    Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mật khẩu mới',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        TextField(
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
                              onTap: (() {
                                setState(() {
                                  hiden();
                                });
                              }
                              
                            ),
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
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Xác nhận',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        TextField(
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          obscureText: ishiden,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                            border: OutlineInputBorder(),
                            hintText: "Xác nhận mật khẩu",
                            prefixIcon: (Icon(Icons.lock_outline)),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  hiden();
                                });
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
                                ],
                              ),
                         
                  
               
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: r / 2, minHeight: 45),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>DangnhapScreen(),));
                      },
                      // child: const Padding(
                      //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Đặt mật khẩu",
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