import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HoanthanhbaihocScreen extends StatefulWidget {
  const HoanthanhbaihocScreen({super.key});

  @override
  State<HoanthanhbaihocScreen> createState() => _HoanthanhbaihocScreenState();
}

class _HoanthanhbaihocScreenState extends State<HoanthanhbaihocScreen> {
  @override
  Widget build(BuildContext context) {
    var mlr = 20;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Column(
          children: [
            Text('Hoàn thành',style: TextStyle(color: Colors.orange,fontSize: 36,fontWeight: FontWeight.bold),),
            Text('Bài học ',style: TextStyle(color: Colors.orange,fontSize: 36,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Image(
                  height: 200 ,
                  width: 200,
                  image: AssetImage('assets/images/language.png')),
                  
              ),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  
                  children: [
                   
                  Container(
                    margin: EdgeInsets.all(5),
                   padding: EdgeInsets.all( 6),
                    height: 70,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 3
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Điểm KN',style: TextStyle(fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Icon(Icons.flash_on_outlined,
                         color: Colors.orange,
                         size: 30,),
                          Text('1000')
                      ],)
                    ],),
                  ),
                  Container(
                     margin: EdgeInsets.all(10),
                   padding: EdgeInsets.all( 6),
                    height: 70,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3
                        
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Tốc độ',style: TextStyle(fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Icon(Icons.access_alarm_outlined,
                         color: Colors.blue,
                         size: 30,),
                          Text('1000')
                      ],)
                    ],),
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all( 6),
                    height: 70,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 3
                        
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Chính xác',style: TextStyle(fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image
                         
                         (image: AssetImage('assets/images/dart.png'),height: 30,width: 25,),
                          Text('1000')
                      ],)
                    ],),
                  )
                ],),
          ],
        ),
           
               ConstrainedBox(
                constraints: BoxConstraints(minHeight: 40,minWidth: 200),
                
                child: ElevatedButton(
                
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                     shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          )),
                  ),
                  onPressed: (){}, child: Text('Tiếp tục',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
              ),
          
      ],)
      ,),
    );
  }
}