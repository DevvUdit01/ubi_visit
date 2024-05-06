import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubi_visit/pages/dashboard.dart';
import 'package:ubi_visit/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool changeButton = false;
    String _emailErrorText;
    //TextEditingController _emailcontroller = TextEditingController();
    //TextEditingController _passwordcontroller = TextEditingController();
    final _formkey=GlobalKey<FormState>();

    movetohome(BuildContext context)async{
     if(_formkey.currentState!.validate()){
      setState(() {
        changeButton = false;
      });
     }
    }

    
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.5),
            child: Column(
              children: [
                Image.asset("assets/login3.avif",
                 height: 400,
                 width: 800,
                ),
                Text("Welcome Back!!",
                 style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                 ),
                ),
            
                Text("Welcome to your existing account",
                 style: TextStyle(
                  fontSize: 20,
                 ),
                ),
            
                SizedBox(height: 10,),
            
                TextFormField(
                  //controller: _emailcontroller,
                  decoration: InputDecoration(
                    hintText: "Email/Phone",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
          
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Email cannot be empty";
                    }
                    else 
                    return null;
                  },
          
                ),
                SizedBox(height: 10,),
            
            
                TextFormField(
                  //controller: _passwordcontroller,
                  decoration: InputDecoration(
                    //labelText: "Email/Phone",
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
          
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }
                    else 
                    return null;
                  },
                ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){},
                   child: Text("forget password ?",
                   style: TextStyle(
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
                  movetohome(context);
                }, 
                  child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                 ),
                ),
                ),
              ), 
               SizedBox(height: 15,),
              Text("or connect using ",
              style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                   ),
              ),
          
              SizedBox(
                height: 60,
                width: 400,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                  onPressed: (){}, 
                icon: SvgPicture.asset( 
                           'assets/svg1.svg', 
                            semanticsLabel: 'My SVG Image', 
                            height: 40, 
                            width: 40, 
                          ),
          
                label: Text("Google",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                   ),
                ),
                ),
              ),
          
               SizedBox(height: 30,), 
          
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account? ",
                   style: TextStyle(
                    fontSize: 20,
                   ),
                   ),
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder :(context) => SignupPage()));
                   },
                       child: Text("Sign up",
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
      ),
    );
  }
}