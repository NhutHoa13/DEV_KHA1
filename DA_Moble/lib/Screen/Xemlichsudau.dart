import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Xemlichsudau/lichsudauthang.dart';
import 'package:flutter_application_1/Screen/Xemlichsudau/lichsudauthua.dart';
import 'package:flutter_application_1/component/widget_lichsudau.dart';
import 'package:flutter_application_1/model/db_lichsudau.dart';


class XemlichdauScreen extends StatefulWidget {
  const XemlichdauScreen({super.key});

  @override
  State<XemlichdauScreen> createState() => _XemlichdauScreenState();
}

class _XemlichdauScreenState extends State<XemlichdauScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState(){
    tabController = TabController(length: 2 , vsync: this);
    super.initState();
  }   
  @override
  void  dispose(){
    tabController.dispose();
    super.dispose();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
        // decoration:BoxDecoration(
        //   gradient:LinearGradient(
        //     colors:[
        //       Colors.orange,
        //       Colors.yellow,
        //       Colors.green
        //     ],
        //     begin:Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   )
        // ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
     
        child: Container(
              height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
                Row(
                  
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  // Navigator.of(context).popUntil((route) => route.isFirst);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             TrangchuSrceen()));
                                  // Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black.withOpacity(0.6),
                                  size: 30,
                                ),
                              ),
                            ),
                            Text(
                              'Lịch sử đấu',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                            Text(' '),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                     Container(
                     // height: 50,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(5),

                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TabBar(
                              labelColor: Colors.black,
                              
                              indicatorColor: Colors.orange,
                              indicatorWeight: 2,
                              indicator: BoxDecoration(
                                color: Colors.orange,
                                 
                                borderRadius: BorderRadius.circular(5)
                              ),
                              controller: tabController,
                              tabs: [
                                Tab(text: 'Trận Thắng',),
                                Tab(text: 'Trận Thua',),
                               
                              ],

                            )
                            
                          ), 
                        ],
                      ),
                     ),  
           
            Column(children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(children: [
                Expanded(
                  child: TabBarView(
                        controller: tabController,
                        children: [
                          Winscreen(),
                          LoseScreen(),
                          
                        ],
                      ),
                )
              ]))
        ]),
    
            ],
          ),
        
        
       ),
      ) ,
    );
  }
 }
// Column(children: [
//           Container(
//               height: MediaQuery.of(context).size.height * 0.45,
//               child: Column(children: [
//                 Expanded(
//                   child: TabBarView(
//                         controller: tabController,
//                         children: [
//                           Winscreen(),
//                           LoseScreen(),
                          
//                         ],
//                       ),
//                 )
//               ]))
//         ]),