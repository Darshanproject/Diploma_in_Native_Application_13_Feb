import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Method3 extends StatefulWidget {
  const Method3({super.key});

  @override
  State<Method3> createState() => _Method3State();
}

class _Method3State extends State<Method3> {
  Color screencolor = Colors.white;
  Random _random = Random();
  void oncolor(){
    setState(() {
      screencolor = Color.fromARGB(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        onTap:oncolor,
        child: Container(
          color: screencolor,
        ),
      ),
    );
  }
}