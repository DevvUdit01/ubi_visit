import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                print("value $value selected");
              });
            },
            itemBuilder: (BuildContext Context)=>[
            PopupMenuItem(
              value: 1,
              child: Row(children: [
                Icon(Icons.person),
                Text("profile")
              ],
              ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(children: [
                  Icon(Icons.edit),
                  Text("edit")
                ]
              ))
          ])
        ],
      ),
      body: Center(
        child: Container(
          height: 220,
            width: 450,
          child: Card(
            elevation: 25,
            child: Row(
              children: [
                Stack(children: [
                 
                  CircleAvatar(
                    radius: 72,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/login2.jpg",
                            
                      ),
                    ),
                  ),
                
                  Positioned(
                    bottom: 25,
                    left: 25,
                    child: Container(alignment: Alignment.center,
                      color: Colors.white.withOpacity(0.8),
                      height: 22,
                      width: 100,
                      child: Icon(Icons.add_a_photo_rounded)))
                ],
                alignment: Alignment.bottomRight,
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  SizedBox(height: 50,),
                  Text("Udit pal",
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                   ),
                  ),
                  Text("Flutter intern",
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                   ),
                  )
                 ],
                ),
                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PopupMenuButton(
                                onSelected: (value) {
                                  setState(() {
                    print("value $value selected");
                                  });
                                },
                                itemBuilder: (BuildContext Context)=>[
                                PopupMenuItem(
                                  value: 1,
                                  child: Row(children: [
                    Icon(Icons.person),
                    Text("profile")
                                  ],
                                  ),
                                  ),
                                  PopupMenuItem(
                    value: 2,
                    child: Row(children: [
                      Icon(Icons.edit),
                      Text("edit")
                    ]
                                  ))
                              ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}