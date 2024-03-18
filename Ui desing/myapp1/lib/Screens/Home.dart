import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  // height: 550,
                  width: double.maxFinite,
                  color: Colors.amber,
                  child: Image.network("https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",height: 250,),
                ),
                Container(
                  height: 550,
                  width: double.maxFinite,
                  color: Colors.red,
                  child: Image.asset("assets/download.jpeg"),
                ),
                Container(
                  color: Colors.amber,
                  child: Lottie.asset("assets/a.json"),
                ),
                Container(
                  height: 150,
                  color: Colors.deepOrange,
                  width: double.maxFinite,
                  child: Lottie.network("https://lottie.host/fce97df2-29cb-4381-bf03-4ae47ca7da51/lbzKQfdpIT.json"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}