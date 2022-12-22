import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Chinhsuahoso.dart';

class DoimatkhauScreen extends StatefulWidget {
  const DoimatkhauScreen({super.key});

  @override
  State<DoimatkhauScreen> createState() => _DoimatkhauScreenState();
}

class _DoimatkhauScreenState extends State<DoimatkhauScreen> {
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
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
          child: Column(children: [
           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                   
                           InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              // Navigator.of(context).popUntil((route) => route.isFirst);
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const ChinhsuahosoScreen()));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                          
                        
                        Text(
                          'Đổi mật khẩu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        ),
                        Text('           ')
                      ],
                    ),
                     Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mật khẩu cũ',
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
                             //hintText: 'Tên người dùng',
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
                             //hintText: 'Tên người dùng',
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
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Xác nhận mật khẩu mới',
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
                             //hintText: 'Tên người dùng',
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
                     Container(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  ConstrainedBox(
                            constraints: BoxConstraints(minHeight: 40, minWidth: 200),
                            child: TextButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(orange),
                                    shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side: BorderSide(color: orange)))),
                                onPressed: () {
                                  Navigator.pop(context);
                                 // Navigator.of(context).popUntil((route) => route.isFirst);
                                  // Navigator.push(context, MaterialPageRoute(builder:(context) => const ChinhsuahosoScreen()));
                                },
                                child: Text(
                                  'Lưu',
                                  style: TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold),
                                )),
                          ),
                    ),
              ),
          ]),
        ),
      ),
    );
  }
}