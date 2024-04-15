import 'package:flutter/material.dart';
import 'package:myapp1/Advance/NewTab.dart';
import 'package:myapp1/Advance/Splash_Screen.dart';
import 'package:myapp1/Screens/GirdView1.dart';
import 'package:myapp1/Screens/GridView.dart';
import 'package:myapp1/Screens2/Method1.dart';
import 'package:myapp1/Screens2/Method2.dart';
import 'package:myapp1/Screens2/Method3.dart';
import 'package:myapp1/Screens2/Stck.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}