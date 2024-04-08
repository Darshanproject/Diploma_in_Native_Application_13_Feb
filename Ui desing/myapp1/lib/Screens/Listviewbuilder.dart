import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_View_Screen1 extends StatefulWidget {
  const List_View_Screen1({super.key});

  @override
  State<List_View_Screen1> createState() => _List_View_Screen1State();
}

class _List_View_Screen1State extends State<List_View_Screen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
         
        // scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (cxt,int index){
        return ListTile(
          leading: Text("$index"),
          title: Text("Name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          subtitle: Text("+91 9512714369",style: TextStyle(fontSize: 18),),
        );
      }),
    );
  }
}