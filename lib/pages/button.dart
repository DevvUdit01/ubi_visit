import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonPage extends StatefulWidget {
  const buttonPage({super.key});

  @override
  State<buttonPage> createState() => _buttonPageState();
}

class _buttonPageState extends State<buttonPage> {
  int selectradio = 0;
  bool selectcheck = false;
  bool selectcheck2 = false;
  bool selectcheck3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
     body: Container(
      width: 400,
        height: 600,
      color: Colors.red,
       child: Card(
         elevation: 20,
         color: Colors.lightGreen,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
              children: [
                Text("Registeration form"),
                Text("Select Gender : "),
                Radio(value: 1, groupValue: selectradio, 
                onChanged: (value){
                 selectradio =value!;
                }
                ),
                
                Text("Male"),
             
                 Radio(value: 2, groupValue: selectradio, 
                         onChanged: (value){
                  setState(() {
                    selectradio = value!;
                  });
                         }
                         ),
                          Text("Female"),
              ],
             ),
         
             
              Row(
                children: [
                  Checkbox(value: selectcheck, 
                  onChanged: (value){
                    setState(() {
                      selectcheck = value!;
                    });
                  }
                  ),
                  Text("Coding"),
                ],
              ) ,
              
              Row(
                children: [
                  Checkbox(value: selectcheck2, 
                  onChanged: (value){
                    setState(() {
                      selectcheck2 = value!;
                    });
                  }
                  ),
                  Text("Hindi"),
                ],
              )   ,
              
              Row(
                children: [
                  Checkbox(value: selectcheck3, 
                  onChanged: (value){
                    setState(() {
                      selectcheck3 = value!;
                    });
                  }
                  ),
                  Text("English"),
                ],
              )     
              
             
           ],
         ),
       ),
     ),

    );
  }
}