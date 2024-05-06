import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      endDrawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                ),
              child: Container(
                child: Text("Drawer Header"),
              )
              ),
    
              ListTile(
                title: Text("home"),
                subtitle: Text("open your home page"),
                leading: Icon(Icons.home),
                ),
    
                 ListTile(
                title: Text("profile"),
                subtitle: Text("open your profile page"),
                leading: Icon(Icons.person),
                ),
    
                 ListTile(
                title: Text("settings"),
                subtitle: Text("open your settings page"),
                leading: Icon(Icons.settings),
                ),

                 ListTile(
                title: Text("log out"),
                subtitle: Text("click to log out"),
                leading: 
                InkWell(child: Icon(Icons.exit_to_app),
                onTap: (){
                  Navigator.pop(context);
                },)
                ),
          ],
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (BuildContext Context){
              return AlertDialog(
                      title: Text("alert box"),
              );
            }
            );
        },
        child: Icon(Icons.add),

        ),
    );
  }
}