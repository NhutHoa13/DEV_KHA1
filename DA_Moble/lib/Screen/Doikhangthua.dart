import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/screen.dart';

 var orange = Color.fromARGB(255, 255, 172, 47);

class DoikhangthuaScreen extends StatefulWidget {
   int marks;
  int level;
   DoikhangthuaScreen({super.key,required this.marks,required this.level});

  @override
  State<DoikhangthuaScreen> createState() => _DoikhangthuaScreenState();
}

class _DoikhangthuaScreenState extends State<DoikhangthuaScreen> {
   
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 30),
            child: Center(
              child: Column(
                children: [
                  
                   Text("You Lose",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 36),),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   
                           CircleAvatar(
                        radius: 43,
                          backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),
                          Text('SV',style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold,fontSize: 26,fontStyle: FontStyle.italic)),
                            CircleAvatar(
                        radius: 43,
                          backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),  
                    ],
                  ),
                  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10 , 10),
                          child: Text('${widget.marks}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                        Text('Score',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10 , 10),
                          child: Text('1000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                    ],
                  ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10 , 10),
                          child: Text('${widget.marks}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                        Text('Câu đúng',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10 , 10),
                          child: Text('6/15',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage('assets/images/trophy (4).png')),
                        Text(' +6',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage('assets/images/diamond.png')),
                        Text(' +6',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26))
                    ],
                  ),
                  SizedBox(height: 20,),
                  button(context, 'Chơi lại', (){}),
                  button(context, 'Tìm đối thủ', (){}),
                  button(context, 'Thoát', (){   
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ))  ;           
                  }),
                ],
              ),
            ) 
            )),
      ),
    );
  }
}
 Container button(BuildContext context,String text, Function onTap){
      return  Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 300, minHeight: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                      onPressed: () {
                        onPressed: (){
                          onTap();
                        };
                      },
                    
                      child: Text(
                       text,
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
  }