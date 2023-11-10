import 'dart:async';
import 'package:flipkaet2/first.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  get assets => null;

  get imag => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => First(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 90,
          width: 90,
          child: Center(
            child: Image.asset(
              "images/flip.jpg",
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 42, 49, 128),
    );
  }
}
