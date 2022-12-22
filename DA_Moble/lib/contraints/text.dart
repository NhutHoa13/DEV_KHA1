import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container text1(
    BuildContext context, Color color, String text, Function onTap) {
  return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(border: Border.all(color: color, width: 2)),
      child: TextButton(
        onPressed: (() {
          
          onTap();
        }),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ));
    }