import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Method1 extends StatefulWidget {
  const Method1({super.key});

  @override
  State<Method1> createState() => _Method1State();
}

class _Method1State extends State<Method1> {
double textsize = 18;
  void increase(){
    setState(() {
      textsize += 2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Method 1 "),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Venu",style: TextStyle(
            fontSize: textsize,fontWeight: FontWeight.bold
          ),),
          ElevatedButton(onPressed: (){
            increase();
          }, child: Text("+")),
          ElevatedButton(onPressed: (){
            // void dec(){
            //   setState(() {
            //     textsize -= 2;
            //   });
            // }
            setState(() {
              textsize -= 2;
            });
          }, child: Text("-"))
        ],
      ),
    );
  }
}