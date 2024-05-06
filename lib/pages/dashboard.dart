import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.lightBlue,
        height: 960,
        width: 500,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   color: Colors.transparent,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(30),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.white.withOpacity(0.6), // Whitish transparent color
            //       ),
            //       height: 200,
            //       width: 400,
            //       padding: EdgeInsets.all(20),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 "Your Name ",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 30,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //               Text(
            //                 "Guard ",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 30,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           ),
            //           CircleAvatar(
            //             backgroundColor: Colors.white,
            //             radius: 50,
            //             child: Icon(
            //               Icons.person,
            //               size: 50,
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Card(
            elevation: 50,
            color: Colors.lightGreen,
            shadowColor: Colors.black,
            child: SizedBox(
              width:420,
              height:240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage( "assets/login2.jpg"),
                        radius: 50,
                      ),
                  
                  SizedBox(
                    height: 120,
                    width: 20,
                  ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                                  "Udit Pal",
                                  style: TextStyle(
                                    fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                                  ),
                                 ), 
                        Text(
                                  "Flutter Intern ",
                                  style: TextStyle(
                                    fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                                  ),
                                 ),
                      ],
                    ),
                   
                    ],
                  
                  ),
          
                    Divider(),
          
                    
          
                     Text(
                                  "Gyan Ganga Building",
                                  style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                                  ),
                                 ), 
          
                                  Text(
                                  "Gwalior, madhya pradesh",
                                  style: TextStyle(
                                    fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                                  ),
                                 ), 
                ],
              
              ),
            ),
          ),
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: 591,
              width: 450,
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.lightBlue,
                    ),
                    child: TextButton.icon(
                     onPressed: (){},
                     icon: Icon(Icons.add), 
                     label: Text("Add Visitor",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                     )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    
    //bottomNavigationBar: NavigationBar(),
    );
  }
}
