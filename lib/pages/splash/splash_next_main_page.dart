import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:work_0/pages/home/home_pagee.dart';

class SplashMainPage extends StatefulWidget {
  const SplashMainPage({super.key});

  @override
  State<SplashMainPage> createState() => _SplashMainPageState();
}

class _SplashMainPageState extends State<SplashMainPage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: Lottie.asset("assat/animations/Animation - 1701002441122.json"),
      ),
    );
  }
}
