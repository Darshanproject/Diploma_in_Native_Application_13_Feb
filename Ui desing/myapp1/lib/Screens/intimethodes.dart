import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_View_Screen extends StatefulWidget {
  const List_View_Screen({super.key});

  @override
  State<List_View_Screen> createState() => _List_View_ScreenState();
}

class _List_View_ScreenState extends State<List_View_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        
        child: ListView(
          // scrollDirection: Axis.horizontal,
          // physics: BouncingScrollPhysics(),
          // shrinkWrap: true,
          children: <Widget>[
              Container(
                height: 450,
                width: 450,
                color: Colors.amber[100],
              ),
               Container(
                height: 450,
                width: 450,
                color: Colors.amber[200],
              ),
              Container(
                height: 450,
                width: 450,
                color: Colors.amber[100],
              ),
               Container(
                height: 450,
                width: 450,
                color: Colors.amber[200],
              ),
              Container(
                height: 450,
                width: 450,
                color: Colors.amber[100],
              ),
               Container(
                height: 450,
                width: 450,
                color: Colors.amber[200],
              ),
              Container(
                height: 450,
                width: 450,
                color: Colors.amber[100],
              ),
               Container(
                height: 450,
                width: 450,
                color: Colors.amber[200],
              ),
          ],
        ),
      ),
    );
  }
}