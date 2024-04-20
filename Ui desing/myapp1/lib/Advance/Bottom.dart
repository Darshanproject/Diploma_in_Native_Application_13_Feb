import 'package:flutter/material.dart';
import 'package:myapp1/Screens2/Method1.dart';
import 'package:myapp1/Screens2/Method2.dart';
import 'package:myapp1/Screens2/Method3.dart';

class MyBottom_Bar extends StatefulWidget {
  const MyBottom_Bar({super.key});

  @override
  State<MyBottom_Bar> createState() => _MyBottom_BarState();
}

class _MyBottom_BarState extends State<MyBottom_Bar> {
  int _selectedindex = 0;
  void onclick (int index){
    setState(() {
      _selectedindex = index;
    });
  }
  final List name = [
    Method1(),
    Method2(),
    Method3()
    // Text("Home",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
    // Text("School",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
    // Text("Buisness",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // body: Container(
      //   child: Center(
      //     child: name.elementAt(_selectedindex),
      //   ),
      // ),
      body: name.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onclick,
        selectedFontSize: 24,
        unselectedFontSize: 18,
        unselectedIconTheme: IconThemeData(size: 18,color: Colors.black),
        selectedIconTheme: IconThemeData(size: 24,color: Colors.white),
        backgroundColor: Colors.amber[300],
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.park),label: "business"),
        BottomNavigationBarItem(icon: Icon(Icons.school),label: "school"),
      ]),
    );
  }
}