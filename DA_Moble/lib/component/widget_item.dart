import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';

class CanhanFrame extends StatefulWidget {
  CanhanFrame({super.key, required this.info});
  final Info info;
  @override
  State<CanhanFrame> createState() => _InfoState();
}

class _InfoState extends State<CanhanFrame> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 70, minWidth: r),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(width: 1, color: orange),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // Navigator.of(context).popUntil((route) => route.isFirst);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuanlitaikhoanScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.info.path_rank,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(widget.info.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    widget.info.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Text( 
                    widget.info.current_ranking + ' KN',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoikhangFrame extends StatefulWidget {
  DoikhangFrame({super.key, required this.info});
  final Info info;
  @override
  State<DoikhangFrame> createState() => _DoikhangFrameState();
}

class _DoikhangFrameState extends State<DoikhangFrame> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 70, minWidth: r),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(width: 1, color: orange),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // Navigator.of(context).popUntil((route) => route.isFirst);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuanlitaikhoanScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.info.path_rank,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(widget.info.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    widget.info.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/images/trophy (4).png'),
                  ),
                  Text(
                    widget.info.current_ranking,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ManFrame extends StatefulWidget {
  ManFrame({super.key, required this.info});
  final Info info;
  @override
  State<ManFrame> createState() => _ManFrameState();
}

class _ManFrameState extends State<ManFrame> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 70, minWidth: r),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(width: 1, color: orange),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // Navigator.of(context).popUntil((route) => route.isFirst);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuanlitaikhoanScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.info.path_rank,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(widget.info.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    widget.info.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/images/trophy (4).png'),
                  ),
                  Text(
                    widget.info.current_ranking,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}