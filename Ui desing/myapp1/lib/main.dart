import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Formwithpassword.dart';
import 'package:myapp1/Screens/Listviewbuilder.dart';
import 'package:myapp1/Screens/Sample.dart';
import 'package:myapp1/Screens/intimethodes.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: List_View_Screen1(),
    );
  }
}