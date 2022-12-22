// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/controller/questioncontroller.dart';
// import 'package:get/get.dart';

// class Quiz extends StatelessWidget {
//   const Quiz({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image(image: AssetImage('assets/images/backgroup1.png',),fit: BoxFit.fill,),
//           demthoigian()
//         ],
        
//       ),
    
     
//     );
//   }
// }

// class demthoigian extends StatelessWidget {
//   const demthoigian({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
//       padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 35,
            
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey.withOpacity(0.6),width: 2),
//               borderRadius: BorderRadius.circular(50),
//             ),
//             child: GetBuilder<QuestionController>(
//               init: QuestionController(),
//               builder: (controller) { 
//                // print(controller.animation.value);
//                 return Stack(
//                   children: [
//                     LayoutBuilder(builder: (context,contraints)=>Container(
//                       width: contraints.maxWidth*controller.animation.value,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromARGB(255, 255, 169, 40),
//                             Color.fromARGB(255, 255, 194, 103),
//                             Color.fromARGB(255, 255, 213, 149),
                       
//                           ],
//                         ),
//                         borderRadius: BorderRadius.circular(50)
//                       ),
//                     )),
//                     Positioned.fill(child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal:2),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('${(controller.animation.value * 60).round()} sec'),
//                         Center(child: Image(image:AssetImage('assets/images/clock.png'),height: 25,width: 25,))
//                         ],
//                       ),
//                     )
//                     )
//                   ],
//                 );
//               }
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }