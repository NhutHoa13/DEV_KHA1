import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/item_lichsudau.dart';

class Frame_DauThang extends StatefulWidget {
  const Frame_DauThang({super.key, required this.historys});
  final history historys;

  @override
  State<Frame_DauThang> createState() => _Frame_DauThangState();
}

class _Frame_DauThangState extends State<Frame_DauThang> {
  @override
  Container build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ClipOval(
                  child: Image(
                    height:50,
                    width: 50,
                    image: AssetImage(widget.historys.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('vs. ' + widget.historys.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),
                Text('Đối kháng')
              ],
        ),
            ],
          ),
        Column(
          children: [
              Text('Win',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 242, 255, 0),fontSize: 16),),
          ],
        ),
        Column(
          children: [
           TextButton(onPressed: (){}, child: Text('...',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),))
          ],
        )
        ],
      ),
    );
  }
}


class Frame_DauThua extends StatefulWidget {
  const Frame_DauThua({super.key, required this.historys});
  final history historys;

  @override
  State<Frame_DauThua> createState() => _Frame_DauThuaState();
}

class _Frame_DauThuaState extends State<Frame_DauThua> {
  @override
  Container build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ClipOval(
                  child: Image(
                    height:50,
                    width: 50,
                    image: AssetImage(widget.historys.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('vs. ' + widget.historys.title,style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Đối kháng',)
              ],
        ),
            ],
          ),
        Column(
          children: [
              Text('Lose',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 65, 66, 69),fontSize: 16),),
          ],
        ),
        Column(
          children: [
           TextButton(onPressed: (){}, child: Text('...',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),))
          ],
        )
        ],
      ),
    );
  }
}
