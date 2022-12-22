import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChoicanhanScreen extends StatefulWidget {
  const ChoicanhanScreen({super.key});

  @override
  State<ChoicanhanScreen> createState() => _ChoicanhanScreenState();
}

class _ChoicanhanScreenState extends State<ChoicanhanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/logo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
          ],)
        ],),
      ),
    );
  }
}
