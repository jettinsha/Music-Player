import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Music_home.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Music_splash()));
}

class Music_splash extends StatefulWidget {
  @override
  State<Music_splash> createState() => _Music_splashState();
}

class _Music_splashState extends State<Music_splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Music_home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Lottie.asset("assets/animations/music.json"),
        ),
      ),
    );
  }
}
