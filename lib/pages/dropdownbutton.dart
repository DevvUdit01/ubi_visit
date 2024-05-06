import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String DropValue = "text 1";
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      body: Center(
        child:
          // DropdownButton(
          //   icon: Icon(Icons.keyboard_arrow_down),
          //   value: DropValue,
          //   items: ["text 1","text 2","text3"].map((e) {
          //     return DropdownMenuItem(
          //       value: e,
          //       child: Text(e));
          //   }).toList(), 
            
            
          //   onChanged: (value){
          //     setState(() {
          //      DropValue= value!; 
          //     });
          //   },       
          
          //       ),
      
        ElevatedButton(
          child: Text("Bottom Sheet"),
          onPressed: (){
            showModalBottomSheet(
              context: context, 
              builder: (BuildContext c1){
                 return SizedBox(
                  height: 400,
                  width: 500,
                  child: Center(child: Text("bottom Sheet"),));
      
              }
              );
          },
          ),
      ),
    );
  }
}