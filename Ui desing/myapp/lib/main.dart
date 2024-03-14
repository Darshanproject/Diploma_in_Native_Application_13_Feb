import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            "Container",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          height: 250,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(width: 5, color: Colors.black)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("Hello"),
              // Text("Hello 2"),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black)),
                margin: EdgeInsets.all(12),
                // color: Colors.white,
                child: Text("123"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Hello"),
                  Text("Hello 2"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
