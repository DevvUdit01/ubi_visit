
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubi_visit/pages/dashboard.dart';
import 'package:ubi_visit/pages/homepage.dart';
import 'package:ubi_visit/pages/login_page2.dart';

class SignupPage2 extends StatefulWidget {
  const SignupPage2({super.key});

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
   int selectradio=0;
   bool selectcheck =false;
   bool selectcheck2 =false;
   bool selectcheck3 =false;
   bool selectcheck4 =false;
   bool isChecked =false;
   String DropValue = "     ";
   GlobalKey <FormState>signupKey=GlobalKey();
   TextEditingController _usernameController = TextEditingController();
   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();
   bool genderSelected = false;
   bool languageSelected = false;
   bool courseSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset('assets/login3.avif'),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  Register",
                         style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                         ),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  Enter your personal information",
                         style: TextStyle(
                          fontSize: 20,
                         ),
                        ),
                ],
              ),
            SizedBox(height: 20,),
                Form(
                  key: signupKey,
                  child: Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                         Text("  Username",
                               style: TextStyle(
                                fontSize: 20,
                               ),
                              ),
                      ],
                                    ),
                                     TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(CupertinoIcons.at_circle),
                              filled: true,
                              fillColor: Colors.grey.shade300,
                              hintText: "Enter your username",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),

                            validator: (value){
                    if(value!.isEmpty){
                     return "Please enter your username";
                    }
                    else
                    return null;
                  },
                                   ),
                                    SizedBox(height: 10,),
                                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        
                        Text("  Email",
                              style: TextStyle(
                               fontSize: 20,
                              ),
                             ),
                                ],
                                     ),
                                     
                         TextFormField(
                              controller: _emailController,
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
                       validator: (value){
                    if(value!.isEmpty){
                     return "Please enter your email";
                    }
                    else
                    return null;
                  },
                       ),
                                   
                                    SizedBox(height: 10,),
                                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("  Password",
                               style: TextStyle(
                                fontSize: 20,
                               ),
                              ),
                       ],
                                     ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
                             validator: (value) {
                    if(value!.isEmpty){
                      return "Please enter password";
                    }
                    else if(value.length<6){
                      return "password should contain 6 letters";
                    }
                    return null;
                  },
                                    ),
                                  
                                     SizedBox(height: 10,),
                                     Container(
                       child: Card(
                        color: Colors.grey.shade100,
                       child: Row(
                                     children: [
                        Text("  Select Gender : ",
                           style: TextStyle(
                                  fontSize: 20,
                                 ),
                        ),
                         SizedBox(width: 10,),
                        Radio(value: 1, groupValue: selectradio, 
                        onChanged: (value){
                         setState(() {
                         selectradio =value!;
                         genderSelected = true; 
                          });
                        }
                        ),
                        Text("Male",
                         style: TextStyle(
                                  fontSize: 20,
                                 ),
                        ),
                                    
                         Radio(value: 2, groupValue: selectradio, 
                                 onChanged: (value){
                          setState(() {
                            selectradio = value!;
                            genderSelected = true; 
                          });
                                 }
                                 ),
                                  Text("Female",
                                   style: TextStyle(
                                  fontSize: 20,
                                 ),
                                  ),
                                     ],
                                    ),
                                     ),
                                     ),
                      
                                   SizedBox(height: 10,),
                                   Card(
                                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        
                        Column(
                          children: [
                            SizedBox(height: 8,),
                            Text("  Select Languages : ",
                               style: TextStyle(
                                      fontSize: 20,
                                     ),
                              ),
                          ],
                        ),
                        SizedBox(width: 60,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                                children: [
                                  Checkbox(value: selectcheck, 
                                  onChanged: (value){
                                    setState(() {
                                      selectcheck = value!;
                                      languageSelected = true;
                                    });
                                  }
                                  ),
                                  Text("Hindi",
                                   style: TextStyle(
                                          fontSize: 20,
                                         ),),
                                ],
                              ) ,
                              
                              Row(
                                children: [
                                  Checkbox(value: selectcheck2, 
                                  onChanged: (value){
                                    setState(() {
                                      selectcheck2 = value!;
                                      languageSelected = true;
                                    });
                                  }
                                  ),
                                  Text("English",
                                   style: TextStyle(
                                          fontSize: 20,
                                         ),),
                                ],
                              )   ,
                              
                              Row(
                                children: [
                                  Checkbox(value: selectcheck3, 
                                  onChanged: (value){
                                    setState(() {
                                      selectcheck3 = value!;
                                      languageSelected = true;
                                    });
                                  }
                                  ),
                                  Text("Bhojpuri",
                                   style: TextStyle(
                                          fontSize: 20,
                                         ),),
                                ],
                              ),
                           ],
                         ),
                       ],
                                     ),
                                   ),   
                                    
                                  SizedBox(height: 10,),
                            Container(
                              child: Card(
                                child: Row(
                                  children: [
                                    Text("  Select your course : ",
                                       style: TextStyle(
                                              fontSize: 20,
                                             ),
                                      ),   
                                      SizedBox(width: 60,),
                                                DropdownButtonHideUnderline(
                                                  child: DropdownButton(
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    ),
                                                  icon: Icon(Icons.keyboard_arrow_down),
                                                  value: DropValue,
                                                  items: ["     ","flutter","php","c++","java","python"].map((e) {
                                                    return DropdownMenuItem(
                                                      value: e,
                                                      child: Text(e));
                                                  }).toList(), 
                                                  
                                                  
                                                  onChanged: (value){
                                                    setState(() {
                                                     DropValue= value!; 
                                                     courseSelected = true;
                                                    });
                                                  },       
                                                                                                
                                                      ),
                                                ),
                                  ],
                                ),
                              ),
                            ),
                                    
                        SizedBox(height: 20,),
                        Row(
                          children: [
                             Checkbox(value: isChecked, onChanged: (value){
                              setState(() {
                                isChecked =value!;
                              });
                             }),
                             Text("Term & conditions"),
                          ],
                        ),
                        SizedBox(height: 20,),
                                    
                        SizedBox(
                          height: 60,
                          width: 400,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                            onPressed: (){
                               bool isValid = signupKey.currentState!.validate();
                                      if(!isValid){
                                       return null;
                                       }
                             if (genderSelected && languageSelected && courseSelected) {
                          showDialog(context: context, 
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: Text("Alert Box "),
                              content: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                                }, 
                                child: Text("Go to homepage")
                                ),
                            );
                          }
                          
                          );
                          }
                          else if(isChecked==false){
                             ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Please accept terms & conditons"),
          ),
        );
                          }
                          
                            else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Please select gender, language, and course."),
          ),
        );
      }
    }, 
                            child: Text("Next",
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
                         Text("Already have an account? ",
                         style: TextStyle(
                          fontSize: 20,
                         ),
                         ),
                         TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder :(context) => LoginPage2()));
                         },
                             child: Text(" Login here",
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
            ],
          ),
        ),
      ),
    );
  }
}