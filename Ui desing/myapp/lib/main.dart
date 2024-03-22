import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 450,
                color: Colors.blue,
              ),
              Container(
                height: 250,
                width: 450,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.white,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.green,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}