import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/choicanhan/Bando.dart';
//import 'package:flutter_application_9/artchoice.dart';

class result extends StatefulWidget {
  int marks;
   result({super.key,required this.marks});
 
  @override
  State<result> createState() => _resultState(marks);
}

class _resultState extends State<result> {
  int marks;
  _resultState(this.marks);

  // List<String> images =[
  //   "images/backgroup1.png",
  //   "images/backgroup2.png",
  //   "images/backgroup3.png",
  // ];
  // String message ="";
  // String image ="";

  
  @override
  // void initState(){
  //   if(marks<20){
  //     image=images[0];
  //     message="you should try hard \n"+"you score $marks";
  //   }else if(marks<35){
  //      image=images[1];
  //     message="you should do better \n"+"you score $marks";
  //   }else {
  //      image=images[2];
  //     message="you should a great job \n"+"you score $marks";
  //   }
  //   super.initState();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULTAT'),
        centerTitle: true,
      ),
      body: Column(children: [
        Center(
          child: Padding(padding:EdgeInsets.all(10),
          child: Center(
            child: Text("QUIZSTART",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),),
        ),
        Center(
          child: Padding(padding:EdgeInsets.all(10),
          child: Center(
            child: Text("Challenge Make Great!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),),
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          child: Column(children: [
            // Material(
            //   child: Container(
            //     width: 120,
            //     height: 120,
            //     child: ClipRRect(
            //       child: Image(image: AssetImage(image)),
            //     ),
            //   ),
            // ),
            Padding(padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            )),
            // Center(
            //   child: Text(message,
            //   textAlign: TextAlign.center,
            //   style:TextStyle(fontSize: 15) ,),
            // )
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
            ),
            Flexible(child: Divider(
              color: Colors.black,
              height: 2,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            )),
            Text("My record",style: TextStyle(fontSize: 20,color: Colors.black),),
             Flexible(child: Divider(
              color: Colors.black,
              height: 2,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            )),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                SizedBox(width: 50,),
                Text("Win"),
                Text(marks.toString(),style: TextStyle(fontSize: 20,color: Colors.green),),
                SizedBox(width: 50,),
                // Text("LOSE"),
                // Text((100-marks).toString(),style: TextStyle(fontSize: 20,color: Colors.red),)
              ],
            ),
          
          ],
          
        ),
          SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BandoScreen(marks: widget.marks,),));

                }, child: Text('Continue'))
              ],
            )
      ],),
    );
  }
}