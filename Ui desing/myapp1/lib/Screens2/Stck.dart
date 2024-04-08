import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_Screen extends StatefulWidget {
  const Stack_Screen({super.key});

  @override
  State<Stack_Screen> createState() => _Stack_ScreenState();
}

class _Stack_ScreenState extends State<Stack_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(            child: Image.network("https://images.unsplash.com/photo-1458501534264-7d326fa0ca04?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.cover,)),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
              child: Column(
                children: [
                  TextField()
                ],
              ),
            ))
        ],
      ),
      appBar: AppBar(),
    );
  }
}