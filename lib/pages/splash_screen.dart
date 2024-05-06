import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1040,
        width: 540,
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("MADE BY UBI",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            ),
            SizedBox(
              height: 120,
              width: 540,
           ),
          ],
        ),
      ),

    );
  }
}