import 'package:flutter/material.dart';
    
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shail"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            child: Text("My First app"),
          ),
        ),
      ),
    );
  }
}