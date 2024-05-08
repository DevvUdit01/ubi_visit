import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ubi_visit/pages/SettingsPage.dart';
import 'package:ubi_visit/pages/homepage.dart';
import 'package:ubi_visit/pages/profile_page.dart';

class TabControl extends StatefulWidget {
  const TabControl({super.key});

  @override
  State<TabControl> createState() => _TabControlState();
}

class _TabControlState extends State<TabControl> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Durations.short1,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(FeatherIcons.activity)
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.grey.shade200
              ),
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
            indicatorPadding: EdgeInsets.all(-3),
            tabs: [
            Container(
              width: MediaQuery.sizeOf(context).width*0.15,
              height: MediaQuery.sizeOf(context).height*0.05,
              child: Text("Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              )),
              Container(
              width: MediaQuery.sizeOf(context).width*0.15,
              height: MediaQuery.sizeOf(context).height*0.05,
              child: Text("Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              )),
              Container(
                color: Colors.blue,
              width: MediaQuery.sizeOf(context).width*0.2,
              height: MediaQuery.sizeOf(context).height*0.05,
              child: Text("Settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              )),
          ],),
        ),
       body: TabBarView(
        children: [
           HomePage(),
           UserProfilePage(),
           SettingsPage(),
        ],
        ),
      ),
      length: 3,
      );
  }
}