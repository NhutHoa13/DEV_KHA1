import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Positioned(
              left: 20,
              top: 46,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black),
                    color: Color.fromARGB(255, 199, 196, 196),
                    borderRadius: BorderRadius.circular(20)),
                constraints: BoxConstraints(maxHeight: 40, maxWidth: 130),
              )),
          Positioned(
            top: 40,
            left: 0,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  )),
            ),
          ),
          Positioned(
            left: 60,
            top: 58,
            child: Text(
              'Nhut Hoa',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          Positioned(
            left: 47,
            top: 85,
            child: Container(
              width: 90,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  '500',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
   
    );
  }
}
