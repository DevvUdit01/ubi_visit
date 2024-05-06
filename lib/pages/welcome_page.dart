import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ubi_visit/pages/login_page.dart';
import 'package:ubi_visit/pages/profile_page.dart';
import 'package:ubi_visit/pages/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                      Text("Welcome",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      ),
                    ],
                  ),
                   
                  SizedBox(height: 500,),
                   SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(onPressed: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder :(context) => LoginPage()));
                    }, 
                      child: Text("Login",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                     ),
                    ),
                    ),
                  ), 

                  SizedBox(height: 50,),
                
                   SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder :(context) => UserProfilePage()));
                    }, 
                      child: Text("Sign up",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                     ),
                    ),
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}