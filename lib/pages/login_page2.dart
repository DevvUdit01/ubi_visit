import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubi_visit/pages/signup_page2.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  String DropDownItem = " Text 1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset('assets/login-image.jpg'),
          
              Text("Login",
                     style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
              Text("Login to continue using the app",
                     style: TextStyle(
                      fontSize: 20,
                     ),
                    ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                   Text("   Email",
                         style: TextStyle(
                          fontSize: 20,
                         ),
                        ),
                ],
              ),
               TextFormField(
                      //controller: _emailcontroller,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                             ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("   Password",
                         style: TextStyle(
                          fontSize: 20,
                         ),
                        ),
                 ],
               ),
              TextFormField(
                      decoration: InputDecoration(
                        suffix: InkWell(
                          child: Icon(CupertinoIcons.eye_slash),
                          onTap: (){
                            setState(() {
                              Icon(CupertinoIcons.eye);
                            });
                          },
                        ),
                        //suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        hintText: "Enter password",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
              ),
          
              Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){},
                       child: Text("forget password ?",
                       style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                       ),
                       ),
                       ),
                    ],
                  ),
              
                  SizedBox(height: 20,),
              
                  SizedBox(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                      onPressed: (){
                      //Navigator.pushReplacement(context, MaterialPageRoute(builder :(context) => Dashboard()));
                    }, 
                      child: Text("Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                     ),
                    ),
                    ),
                  ), 
                   SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text("or connect using ",
                      style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           ),
                      
                      ),
                      Expanded(child: Divider(
                        color: Colors.black,
                      )),
                    ],
                  ),
    
            SizedBox(height: 5,),
             
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child:Image.asset("assets/google2.png"),
                ),
                 Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/facebook.png"),
                    ),
                  ),
                ),
                 Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Image.asset("assets/apple2.png"),
                )
              ],
             ),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account? ",
                   style: TextStyle(
                    fontSize: 20,
                   ),
                   ),
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder :(context) => SignupPage2()));
                   },
                       child: Text("Register Here",
                       style: TextStyle(
                        color: Colors.lightBlue,
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