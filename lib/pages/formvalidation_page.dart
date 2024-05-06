import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({super.key});

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final GlobalKey <FormState>loginkey = GlobalKey();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool showpassword = true;
  //list l= ["text 1","text 2","text 3","text 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Form(
            key: loginkey,
            child: Column(
              children: [
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter your phone number",
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                     return "Please enter your phone number";
                    }
                    else
                    return null;
                  },
                ),
          
                 TextFormField(
                  obscureText: showpassword,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      onPressed: (){
                        setState(() {
                          showpassword =!showpassword;
                          
                        });
                      },
                      ),
                    border: OutlineInputBorder(),
                    hintText: "enter your password",
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
          
                ElevatedButton(
                  onPressed: (){
                    bool isValid = loginkey.currentState!.validate();
          
                    if(!isValid){
                      return null;
                    }
                  }, 
                child: Text("log in")),
          
          
          
                
                  
              ],
            ),
            ),

            SizedBox(
                  height: 100,
                  width: 100,
                  child: ListView(
                    children: [
                      Text("Item 1"),
                      Text("Item 2"),
                      Text("Item 3"),
                      Text("Item 4"),
                    ],
                  ),
                ),
          
                SizedBox(height: 50,),
          
                SizedBox(
                  height: 200,
                  width: 200,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return Text("item $index");
                    }
                    ),
                )
        ],
      ),
    );
  }
}