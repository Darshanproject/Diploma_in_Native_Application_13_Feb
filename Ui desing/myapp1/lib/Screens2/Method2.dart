import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Method2 extends StatefulWidget {
  const Method2({super.key});

  @override
  State<Method2> createState() => _Method2State();
}

class _Method2State extends State<Method2> {
  TextEditingController filed1 = TextEditingController();
  TextEditingController filed2 = TextEditingController();
  var sum = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 450,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                TextField(
                  controller: filed1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: filed2,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
          )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              final  int value1 = int.tryParse( filed1.text)?? 0;
              final int value2 = int.tryParse(filed2.text)?? 0;
          sum = value1+value2;
            });
          }, child: Text("To Add")),
          SizedBox(
            height: 35,
          ),
          Text("Result $sum",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}