import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/Screens2/Method1.dart';
import 'package:myapp1/Screens2/Method2.dart';
import 'package:myapp1/Screens2/Method3.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Tab(child: Text("Home"),icon: Icon(Icons.home),),
            Tab(child: Text("Chats"),icon: Icon(Icons.chat),),
            Tab(child: Text("Calls"),icon: Icon(Icons.call),),
          ]),
        ),
        body: TabBarView(children: [
          // Center(child: Text("Home page",style: TextStyle(fontSize: 24),)),
          // Center(child: Text("Chat page",style: TextStyle(fontSize: 24),)),
          // Center(child: Text("Call logs",style: TextStyle(fontSize: 24),))
          Method1(),
          Method2(),
          Method3()
        ]),
      ));
  }
}