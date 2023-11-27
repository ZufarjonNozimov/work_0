import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_0/pages/home/home_pagee.dart';
import 'package:work_0/pages/sign_up/sign_up_page.dart';
import 'package:work_0/pages/splash/splash_next_main_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey.shade900,
              Colors.blueGrey.shade900,
              Colors.blueGrey.shade900,
            ],
          ),
        ),
        child: SafeArea(
          child: Form(
            key: _key,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 18,
                right: 18,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TweenAnimationBuilder(
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1400),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scaleX: value,
                        scaleY: value,
                        child: Padding(
                          padding: const EdgeInsets.all(100),
                          child: Image.asset(
                            "assat/images/instagram-logo-1494D6FE63-seeklogo.com.png",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  TweenAnimationBuilder(
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1400),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scaleX: value,
                        scaleY: value,
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            label: const Text(
                              "Username.email address or mobile number",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          validator: (value) {
                            var checkEmail =
                                RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                            if (!checkEmail.hasMatch(value ?? "")) {
                              return "Wrong email";
                            } else {
                              return null;
                            }
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TweenAnimationBuilder(
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1400),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scaleX: value,
                        scaleY: value,
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            label: const Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          validator: (value) {
                            var checkPassword = RegExp(
                                r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
                            if (!checkPassword.hasMatch(value ?? "")) {
                              return "Wrong email";
                            } else {
                              return null;
                            }
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TweenAnimationBuilder(
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1400),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scaleX: value,
                        scaleY: value,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            fixedSize: const Size(double.maxFinite, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            var result = _key.currentState!.validate();
                            if (result) {
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  TweenAnimationBuilder(
                    curve: Curves.bounceInOut,
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1400),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scaleX: value,
                        scaleY: value,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.blueGrey.shade900,
                            fixedSize: const Size(double.maxFinite, 50),
                            side: const BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Create new acconunt",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "♋︎Meta",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
