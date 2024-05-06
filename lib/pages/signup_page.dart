import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubi_visit/pages/dashboard.dart';
import 'package:ubi_visit/pages/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20,),  
              Text("Let's Get Started ",
                   style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
          
              Text("Create an account to ubi visitor",
                   style: TextStyle(
                    fontSize: 25,
                   ),
                  ),
              SizedBox(height: 50,),  
          
             TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 25,),
        
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 25,),
        
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Phone",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 25,),
        
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 25,), 
        
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 25,),
  
               SizedBox(
              height: 50,
              width: 400,
              child:  ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder :(context) => Dashboard()));
              }, 
                child: Text("Create",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
               ),
              ),
              ),
            ), 
             SizedBox(height: 15,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Already have an account? ",
                 style: TextStyle(
                  fontSize: 20,
                 ),
                 ),
                 TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder :(context) => LoginPage()));
                 },
                     child: Text("Login",
                     style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                 ),
                     ),
                     ),
               ],
             ),
            ],
          ),


        ),
      ),
    );
  }
}