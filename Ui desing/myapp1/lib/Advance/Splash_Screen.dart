import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/Advance/NewTab.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 12), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>MyTabBar())));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Expanded(
        flex: 1,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
           child: Row(
            children: [
              Lottie.asset('assets/Splash.json',height: 150,width: 150),
            Text("Welcome",style: GoogleFonts.jacquardaBastarda9(textStyle:TextStyle(fontSize: 12,color: Colors.white)),)
            ],
           ) 
          // ],
        ),
    );
  }
}