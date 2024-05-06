import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddVisitor extends StatelessWidget {
  const AddVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.cancel_rounded)),
            ],
          )
        ],
      ),
    );
  }
}