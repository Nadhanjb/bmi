import 'dart:async';
import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';

class BmiSplash extends StatefulWidget {
  const BmiSplash({super.key});

  @override
  State<BmiSplash> createState() => _BmiSplashState();
}

class _BmiSplashState extends State<BmiSplash> {
  @override
  void initState(){
    super.initState();
    Timer(
    Duration(seconds: 3),() => Navigator.push(context, MaterialPageRoute(builder: (context) => BmiScreen())));
}
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/istockphoto-1136878857-2048x2048.jpg'))
      ),
    ),);
  }
}
