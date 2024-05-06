import 'package:flutter/material.dart';
import 'package:ubi_visit/pages/homepage.dart';
import 'package:ubi_visit/pages/profile_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',
        style: TextStyle(
          fontSize: 25
        ),),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(

                  children: [
                    Icon(Icons.home),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.04),
                    Text('Home'),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfilePage()),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 16),
                    Text('User'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
