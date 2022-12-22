import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Dangnhap.dart';

class CapnhatMk extends StatefulWidget {
  const CapnhatMk({super.key});

  @override
  State<CapnhatMk> createState() => _CapnhatMkState();
}

class _CapnhatMkState extends State<CapnhatMk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => DangnhapScreen()),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "CẬP NHẬT MẬT KHẨU 123",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
