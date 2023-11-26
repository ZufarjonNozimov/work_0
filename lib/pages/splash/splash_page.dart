import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:work_0/pages/sign_in/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 3100),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>SignInPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.asset("assat/animations/instagramm.json"),
            Lottie.asset("assat/animations/Animation - 1700893303391.json"),
          ],
        ),
      ),
    );
  }
}
